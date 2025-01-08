const std = @import("std");
const sg = @import("sokol_gfx");
const sgp = @import("sokol_gp");
const sge = @import("sokol_gfx_ext");
const si = @import("stb_image");
const siw = @import("stb_image_write");

const KyteImage = @import("image.zig").KyteImage;

pub fn newCanvas(allocator: std.mem.Allocator, w: i32, h: i32) !*KyteImage {
    const c = try allocator.create(KyteImage);
    errdefer allocator.destroy(c);

    c.* = KyteImage{
        .width = w,
        .height = h,
        .is_canvas = true,
        ._image_handle = undefined,
        ._sampler_handle = undefined,
        .allocator = allocator,
    };

    // Create frame buffer image
    const fb_image_desc = sg.sg_image_desc{
        .render_target = true,
        .width = w,
        .height = h,
    };
    c._image_handle = sg.sg_make_image(&fb_image_desc);
    if (sg.sg_query_image_state(c._image_handle) != sg.SG_RESOURCESTATE_VALID) {
        std.log.warn("Failed to create frame buffer image", .{});
        return error.CanvasBufferImageFailed;
    }

    // Create sampler
    const fb_sampler_desc = sg.sg_sampler_desc{
        .wrap_u = sg.SG_WRAP_CLAMP_TO_EDGE,
        .wrap_v = sg.SG_WRAP_CLAMP_TO_EDGE,
    };
    c._sampler_handle = sg.sg_make_sampler(&fb_sampler_desc);

    // Create depth stencil
    const fb_depth_image_desc = sg.sg_image_desc{
        .render_target = true,
        .width = w,
        .height = h,
        .pixel_format = sg.SG_PIXELFORMAT_DEPTH_STENCIL,
    };
    c._depth_image = sg.sg_make_image(&fb_depth_image_desc);
    if (sg.sg_query_image_state(c._depth_image) != sg.SG_RESOURCESTATE_VALID) {
        std.log.warn("Failed to create frame depth image", .{});
        return error.CanvasDepthImageFailed;
    }

    // Create attachments
    const attch_desc = sg.sg_attachments_desc{
        .colors = [_]sg.sg_attachment_desc{
            .{ .image = c._image_handle },
            .{},
            .{},
            .{},
        },
        .depth_stencil = .{ .image = c._depth_image },
    };
    c._attch = sg.sg_make_attachments(&attch_desc);
    if (sg.sg_query_attachments_state(c._attch) != sg.SG_RESOURCESTATE_VALID) {
        std.log.warn("Failed to create frame attachments", .{});
        return error.CanvasAttachmentsFailed;
    }

    return c;
}

pub fn setCanvas(cvs: ?*KyteImage) !void {
    if (cvs) |c| {
        if (!c.is_canvas) return error.ImageNotCanvas;

        sgp.sgp_begin(c.width, c.height);
        sgp.sgp_scale(1.0, -1.0);
        sgp.sgp_translate(0, @floatFromInt(-c.height));

        sgp.sgp_set_blend_mode(sgp.SGP_BLENDMODE_BLEND);

        const canvas_pass = sg.sg_pass{
            .attachments = c._attch,
            .action = .{
                .colors = [_]sg.sg_color_attachment_action{
                    .{
                        .load_action = sg.SG_LOADACTION_CLEAR,
                        .clear_value = .{ .r = 1.0, .g = 1.0, .b = 1.0, .a = 1.0 },
                    },
                    .{},
                    .{},
                    .{},
                },
            },
        };

        sg.sg_begin_pass(&canvas_pass);

        // TODO: set current canvas in global state (in C: k->current_canvas = c;)

    } else {
        return error.ImageNil;
    }
}

pub fn resetCanvas() void {
    sgp.sgp_flush();
    sgp.sgp_end();
    sg.sg_end_pass();
}
