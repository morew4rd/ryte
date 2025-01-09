const std = @import("std");
const sg = @import("sokol_gfx");
const sgp = @import("sokol_gp");
const fnts = @import("fontstash");

const window = @import("window.zig");
const fs = @import("fs.zig");

const atlas_size = 1024;

pub const FontError = error{
    FontCreationFailed,
    FontLoadFailed,
    NoFontSet,
    InvalidFont,
    OutOfMemory,
};

pub const Font = struct {
    fonsctx: *fnts.FONScontext,
    fontdata: []u8,
    buffer: []u8,
    _image_handle: sg.sg_image,
    _sampler_handle: sg.sg_sampler,
    width: c_int,
    height: c_int,
    font: c_int,
    atlas_dim: c_int,
    fontsize: f32,
    allocator: std.mem.Allocator,
};

pub fn makeFontFromData(allocator: std.mem.Allocator, fontdata: []u8, name: []const u8, initheight: f32) FontError!*Font {
    const font = try allocator.create(Font);
    errdefer allocator.destroy(font);

    // Make a copy of the font data
    const fontdata_copy = try allocator.alloc(u8, fontdata.len);
    @memcpy(fontdata_copy, fontdata);

    font.* = .{
        .fonsctx = undefined,
        .fontdata = fontdata_copy, // Use the copy
        .buffer = undefined,
        ._image_handle = undefined,
        ._sampler_handle = undefined,
        .width = 0,
        .height = 0,
        .font = 0,
        .atlas_dim = atlas_size,
        .fontsize = initheight,
        .allocator = allocator,
    };

    var params = fnts.FONSparams{
        .flags = fnts.FONS_ZERO_TOPLEFT,
        .width = font.atlas_dim,
        .height = font.atlas_dim,
        .userPtr = font,
        .renderCreate = fonsRenderCreate,
        .renderDelete = fonsRenderDelete,
        .renderResize = fonsRenderResize,
        .renderUpdate = fonsRenderUpdate,
        .renderDraw = fonsRenderDraw,
    };

    font.fonsctx = fnts.fonsCreateInternal(@ptrCast(&params)) orelse return FontError.FontCreationFailed;
    font.font = fnts.fonsAddFontMem(font.fonsctx, name.ptr, fontdata.ptr, @intCast(fontdata.len), 0);

    if (font.font == fnts.FONS_INVALID) {
        return FontError.FontLoadFailed;
    }

    return font;
}

pub fn destroyFont(font: *Font) void {
    const allocator = font.allocator;
    fnts.fonsDeleteInternal(font.fonsctx);
    allocator.free(font.fontdata); // Free our copy
    // if (font.buffer.len > 0) {
    //     allocator.free(font.buffer);  this done in fonstash callback
    // }
    allocator.destroy(font);
}

pub fn setFontHeight(font: *Font, newheight: f32) void {
    font.fontsize = newheight;
}

pub fn getFontHeight(font: *Font) f32 {
    return font.fontsize;
}

// fontstash callbacks
fn fonsRenderCreate(user_ptr: ?*anyopaque, width: c_int, height: c_int) callconv(.c) c_int {
    const kfont: *Font = @ptrCast(@alignCast(user_ptr));
    kfont.width = width;
    kfont.height = height;

    // Check for valid dimensions
    if (width <= 0 or height <= 0) return 0;

    const imdesc = sg.sg_image_desc{
        .width = width,
        .height = height,
        .pixel_format = sg.SG_PIXELFORMAT_RGBA8,
        .type = sg.SG_IMAGETYPE_2D,
        .usage = sg.SG_USAGE_DYNAMIC,
    };
    const img = sg.sg_make_image(&imdesc);

    const smpdesc = sg.sg_sampler_desc{
        .min_filter = @intFromEnum(window.main_window.filtermode),
        .mag_filter = @intFromEnum(window.main_window.filtermode),
    };
    const smp = sg.sg_make_sampler(&smpdesc);

    kfont._image_handle = img;
    kfont._sampler_handle = smp;

    // Allocate buffer with proper error handling
    kfont.buffer = kfont.allocator.alloc(u8, @intCast(width * height * 4)) catch {
        sg.sg_destroy_image(img);
        sg.sg_destroy_sampler(smp);
        return 0;
    };
    @memset(kfont.buffer, 0);

    return 1;
}

fn fonsRenderDelete(user_ptr: ?*anyopaque) callconv(.c) void {
    const kfont: *Font = @ptrCast(@alignCast(user_ptr));
    sg.sg_destroy_image(kfont._image_handle);
    sg.sg_destroy_sampler(kfont._sampler_handle);

    // Use the allocator stored in the font object
    if (kfont.buffer.len > 0) {
        kfont.allocator.free(kfont.buffer);
    }
}

fn fonsRenderResize(user_ptr: ?*anyopaque, width: c_int, height: c_int) callconv(.c) c_int {
    fonsRenderDelete(user_ptr);
    return fonsRenderCreate(user_ptr, width, height);
}

fn fonsRenderUpdate(user_ptr: ?*anyopaque, rect: [*c]c_int, data: [*c]const u8) callconv(.c) void {
    const kfont: *Font = @ptrCast(@alignCast(user_ptr));
    const width = kfont.width;
    // const height = kfont.height;

    const X1 = rect[0];
    const Y1 = rect[1];
    const X2 = rect[2];
    const Y2 = rect[3];

    var mydata = kfont.buffer;

    var hh: c_int = 0;
    var ww: c_int = 0;
    var iy = Y1;
    while (iy < Y2) : (iy += 1) {
        hh += 1;
        ww = 0;
        var ix = X1;
        while (ix < X2) : (ix += 1) {
            ww += 1;
            const i: usize = @intCast(ix + iy * width);
            const val = data[i];
            mydata[i * 4] = 255;
            mydata[i * 4 + 1] = 255;
            mydata[i * 4 + 2] = 255;
            mydata[i * 4 + 3] = val;
        }
    }

    // Create proper image data structure
    var imdat = sg.sg_image_data{};
    imdat.subimage[0][0] = .{
        .ptr = mydata.ptr,
        .size = @intCast(mydata.len),
    };

    sg.sg_update_image(kfont._image_handle, &imdat);
}

fn fonsRenderDraw(user_ptr: ?*anyopaque, verts: [*c]const f32, tcoords: [*c]const f32, colors: [*c]const u32, nverts: c_int) callconv(.c) void {
    _ = colors;
    const kfont: *Font = @ptrCast(@alignCast(user_ptr));
    const width: f32 = @floatFromInt(kfont.width);
    const height: f32 = @floatFromInt(kfont.height);

    sgp.sgp_set_image(0, @bitCast(kfont._image_handle));
    sgp.sgp_set_sampler(0, @bitCast(kfont._sampler_handle));

    var i: usize = 0;
    while (i < nverts - 2) : (i += 3) {
        var q: usize = 0;
        const p1x = verts[(q + i) * 2];
        const p1y = verts[(q + i) * 2 + 1];
        const t1x = tcoords[(q + i) * 2];
        const t1y = tcoords[(q + i) * 2 + 1];
        q += 1;
        // const p2x = verts[(q + i) * 2];
        // const p2y = verts[(q + i) * 2 + 1];
        // const t2x = tcoords[(q + i) * 2];
        // const t2y = tcoords[(q + i) * 2 + 1];
        q += 1;
        const p3x = verts[(q + i) * 2];
        const p3y = verts[(q + i) * 2 + 1];
        const t3x = tcoords[(q + i) * 2];
        const t3y = tcoords[(q + i) * 2 + 1];

        sgp.sgp_push_transform();
        sgp.sgp_translate(p1x, p1y);
        sgp.sgp_draw_textured_rect(0, .{
            .x = 0,
            .y = 0,
            .w = p3x - p1x,
            .h = p3y - p1y,
        }, .{
            .x = t1x * width,
            .y = t1y * height,
            .w = (t3x - t1x) * width,
            .h = (t3y - t1y) * height,
        });
        sgp.sgp_pop_transform();
    }

    sgp.sgp_reset_image(0);
}

const FontContext = struct {
    current_font: ?*Font = null,
    // Add other necessary state here
};

var ctx: FontContext = .{};

pub fn setCurrentFont(font: *Font) void {
    ctx.current_font = font;
}

pub fn getCurrentFont() ?*Font {
    return ctx.current_font;
}

pub fn drawText(text: []const u8, x: f32, y: f32) FontError!void {
    const current_font = ctx.current_font orelse return FontError.NoFontSet;

    if (current_font.font == fnts.FONS_INVALID) {
        return FontError.InvalidFont;
    }

    const ctx_fons = current_font.fonsctx;

    fnts.fonsClearState(ctx_fons);
    fnts.fonsSetFont(ctx_fons, current_font.font);
    fnts.fonsSetSize(ctx_fons, current_font.fontsize);

    var fontheight: f32 = 0;
    fnts.fonsVertMetrics(ctx_fons, null, null, &fontheight);
    fnts.fonsSetBlur(ctx_fons, 0);

    const last_x = fnts.fonsDrawText(ctx_fons, x, y + fontheight, text.ptr, null);

    // You might want to return the last_x position if needed
    _ = last_x;
}

pub fn getTextSize(text: []const u8) FontError!struct { width: f32, height: f32 } {
    const current_font = ctx.current_font orelse return FontError.NoFontSet;

    if (current_font.font == fnts.FONS_INVALID) {
        return FontError.InvalidFont;
    }

    const ctx_fons = current_font.fonsctx;

    var bounds: [4]f32 = undefined;
    fnts.fonsTextBounds(ctx_fons, 0, 0, text.ptr, null, &bounds);

    return .{
        .width = bounds[2] - bounds[0],
        .height = bounds[3] - bounds[1],
    };
}

pub fn drawTextGetSize(text: []const u8, x: f32, y: f32) FontError!struct { width: f32, height: f32 } {
    const current_font = ctx.current_font orelse return FontError.NoFontSet;

    if (current_font.font == fnts.FONS_INVALID) {
        return FontError.InvalidFont;
    }

    const ctx_fons = current_font.fonsctx;

    var bounds: [4]f32 = undefined;
    fnts.fonsTextBounds(ctx_fons, x, y, text.ptr, null, &bounds);

    try drawText(text, x, y);

    return .{
        .width = bounds[2] - bounds[0],
        .height = bounds[3] - bounds[1],
    };
}
