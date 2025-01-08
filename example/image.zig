const std = @import("std");
const sg = @import("sokol_gfx");
const sgp = @import("sokol_gp");
const sge = @import("sokol_gfx_ext");
const si = @import("stb_image");
const siw = @import("stb_image_write");

const fs = @import("fs.zig");

pub const KyteImage = struct {
    _image_handle: sg.sg_image,
    _sampler_handle: sg.sg_sampler,
    width: i32,
    height: i32,
    is_canvas: bool = false,
    _depth_image: sg.sg_image = undefined,
    _attch: sg.sg_attachments = undefined,
    allocator: std.mem.Allocator,
};

const KyteBlob = @import("fs.zig").KyteBlob;

pub const ImageError = error{
    CannotMakeImage,
    InvalidImage,
};

fn makeImageFromData(allocator: std.mem.Allocator, buf: []const u8) !KyteImage {
    var width: c_int = undefined;
    var height: c_int = undefined;
    var channels: c_int = undefined;

    const data = si.stbi_load_from_memory(buf.ptr, @intCast(buf.len), &width, &height, &channels, 4);
    if (data == null) {
        return ImageError.CannotMakeImage;
    }
    defer si.stbi_image_free(data);

    const image_desc = sg.sg_image_desc{
        .width = width,
        .height = height,
        .data = .{
            .subimage = [_][16]sg.sg_range{
                [_]sg.sg_range{ sg.sg_range{
                    .ptr = data,
                    .size = @intCast(width * height * 4),
                }, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{} },
                .{ .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{} },
                .{ .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{} },
                .{ .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{} },
                .{ .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{} },
                .{ .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{}, .{} },
            },
        },
    };

    const sgimage = sg.sg_make_image(&image_desc);

    const sampler_desc = sg.sg_sampler_desc{
        .min_filter = sg.SG_FILTER_LINEAR,
        .mag_filter = sg.SG_FILTER_LINEAR,
        .wrap_u = sg.SG_WRAP_CLAMP_TO_EDGE,
        .wrap_v = sg.SG_WRAP_CLAMP_TO_EDGE,
    };

    const sgsampler = sg.sg_make_sampler(&sampler_desc);

    return KyteImage{
        ._image_handle = sgimage,
        ._sampler_handle = sgsampler,
        .width = width,
        .height = height,
        .is_canvas = false,
        .allocator = allocator,
    };
}

pub fn loadImageFromBlob(allocator: std.mem.Allocator, blob: *KyteBlob) !KyteImage {
    return try makeImageFromData(allocator, blob.buffer);
}

pub fn loadImageFromFile(allocator: std.mem.Allocator, fullpath: []const u8) !KyteImage {
    const blob = try fs.loadFile(fullpath);
    defer fs.removeBlob(blob);
    return try loadImageFromBlob(allocator, blob);
}

pub fn removeImage(img: KyteImage) void {
    sg.sg_destroy_image(img._image_handle);
    sg.sg_destroy_sampler(img._sampler_handle);
    if (img.is_canvas) {
        sg.sg_destroy_image(img._depth_image);
        sg.sg_destroy_attachments(img._attch);
    }
}

pub fn saveImage(img: KyteImage, fullpath: []const u8) !void {
    // TODO: Implement image saving
    _ = img;
    _ = fullpath;
    return error.NotImplemented;
}

pub fn isCanvas(img: KyteImage) bool {
    return img.is_canvas;
}

pub fn getImageSize(img: KyteImage) struct { width: i32, height: i32 } {
    return .{ .width = img.width, .height = img.height };
}

pub fn drawImage(img: KyteImage, x: f32, y: f32) void {
    sgp.sgp_set_image(0, @bitCast(img._image_handle));
    sgp.sgp_set_sampler(0, @bitCast(img._sampler_handle));

    sgp.sgp_draw_textured_rect(0, .{ .x = x, .y = y, .w = @floatFromInt(img.width), .h = @floatFromInt(img.height) }, .{ .x = 0, .y = 0, .w = @floatFromInt(img.width), .h = @floatFromInt(img.height) });

    sgp.sgp_reset_image(0);
}
