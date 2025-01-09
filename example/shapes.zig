const std = @import("std");
const sg = @import("sokol_gfx");
const sgp = @import("sokol_gp");
const math = std.math;

const max_circle_tris = 1024;
const pi = math.pi;

pub inline fn drawPoint(x: f32, y: f32) void {
    sgp.sgp_draw_filled_rect(x, y, 1, 1);
}

pub inline fn drawLine(x1: f32, y1: f32, x2: f32, y2: f32) void {
    sgp.sgp_draw_line(x1, y1, x2, y2);
}

pub inline fn drawTriangle(ax: f32, ay: f32, bx: f32, by: f32, cx: f32, cy: f32) void {
    sgp.sgp_draw_filled_triangle(ax, ay, bx, by, cx, cy);
}

pub inline fn drawTriangleLine(ax: f32, ay: f32, bx: f32, by: f32, cx: f32, cy: f32) void {
    const lines = [3]sgp.sgp_line{
        .{ .a = .{ .x = ax, .y = ay }, .b = .{ .x = bx, .y = by } },
        .{ .a = .{ .x = bx, .y = by }, .b = .{ .x = cx, .y = cy } },
        .{ .a = .{ .x = cx, .y = cy }, .b = .{ .x = ax, .y = ay } },
    };
    sgp.sgp_draw_lines(&lines, lines.len);
}

pub inline fn drawRect(x: f32, y: f32, w: f32, h: f32) void {
    sgp.sgp_draw_filled_rect(x, y, w, h);
}

pub inline fn drawRectLine(x: f32, y: f32, w: f32, h: f32) void {
    const lines = [4]sgp.sgp_line{
        .{ .a = .{ .x = x, .y = y }, .b = .{ .x = x, .y = y + h } },
        .{ .a = .{ .x = x, .y = y + h }, .b = .{ .x = x + w, .y = y + h } },
        .{ .a = .{ .x = x + w, .y = y + h }, .b = .{ .x = x + w, .y = y } },
        .{ .a = .{ .x = x + w, .y = y }, .b = .{ .x = x, .y = y + 1 } },
    };
    sgp.sgp_draw_lines(&lines, lines.len);
}

pub inline fn drawCircle(dest_x: f32, dest_y: f32, radius: f32) void {
    drawEllipse(dest_x, dest_y, radius, radius);
}

pub inline fn drawCircleLine(dest_x: f32, dest_y: f32, radius: f32) void {
    drawEllipseLine(dest_x, dest_y, radius, radius);
}

fn circleSteps(radius: f32) usize {
    const min_steps = 10.0;
    const max_steps = max_circle_tris;
    const steps = 6.0 * radius / pi;
    return @intFromFloat(math.clamp(steps, min_steps, (max_steps)));
}

pub fn drawEllipse(dest_x: f32, dest_y: f32, radius_x: f32, radius_y: f32) void {
    const x = dest_x;
    const y = dest_y;
    const r = @max(radius_x, radius_y);
    const xr = radius_x / r;
    const yr = radius_y / r;

    var tris: [max_circle_tris]sgp.sgp_triangle = undefined;
    const count = circleSteps(r);
    const delta_angle = 2.0 * pi / @as(f32, @floatFromInt(count));

    for (0..count) |i| {
        const angle = @as(f32, @floatFromInt(i)) * delta_angle;
        const next_angle = @as(f32, @floatFromInt(i + 1)) * delta_angle;

        tris[i] = .{
            .a = .{ .x = x, .y = y },
            .b = .{ .x = x + r * xr * @sin(angle), .y = y - r * yr * @cos(angle) },
            .c = .{ .x = x + r * xr * @sin(next_angle), .y = y - r * yr * @cos(next_angle) },
        };
    }

    sgp.sgp_draw_filled_triangles(@ptrCast(tris[0..count]), @intCast(count));
}

pub fn drawEllipseLine(dest_x: f32, dest_y: f32, radius_x: f32, radius_y: f32) void {
    const x = dest_x;
    const y = dest_y;
    const r = @max(radius_x, radius_y);
    const xr = radius_x / r;
    const yr = radius_y / r;

    var lines: [max_circle_tris]sgp.sgp_line = undefined;
    const count = circleSteps(r);
    const delta_angle = 2.0 * pi / @as(f32, @floatFromInt(count));

    for (0..count) |i| {
        const angle = @as(f32, @floatFromInt(i)) * delta_angle;
        const next_angle = @as(f32, @floatFromInt(i + 1)) * delta_angle;

        lines[i] = .{
            .a = .{ .x = x + r * xr * @sin(angle), .y = y - r * yr * @cos(angle) },
            .b = .{ .x = x + r * xr * @sin(next_angle), .y = y - r * yr * @cos(next_angle) },
        };
    }

    sgp.sgp_draw_lines(@ptrCast(lines[0..count]), @intCast(count));
}

pub fn drawArc(x: f32, y: f32, radius: f32, start_angle: f32, end_angle: f32) void {
    // Ensure start_angle is less than end_angle
    var start = start_angle;
    var end = end_angle;
    if (start > end) {
        const temp = start;
        start = end;
        end = temp;
    }

    // Calculate number of segments needed
    const angle_range = end - start;
    const segment_count = @max(10, @as(usize, @intFromFloat(angle_range * radius / pi)));
    const angle_step = angle_range / @as(f32, @floatFromInt(segment_count));

    // Create array of points
    var points: [max_circle_tris + 1]sgp.sgp_point = undefined;

    // Center point
    points[0] = .{ .x = x, .y = y };

    // Generate arc points
    for (0..segment_count + 1) |i| {
        const angle = start + @as(f32, @floatFromInt(i)) * angle_step;
        points[i + 1] = .{ .x = x + radius * @cos(angle), .y = y + radius * @sin(angle) };
    }

    // Draw filled arc using triangles
    var tris: [max_circle_tris]sgp.sgp_triangle = undefined;
    for (0..segment_count) |i| {
        tris[i] = .{ .a = points[0], .b = points[i + 1], .c = points[i + 2] };
    }

    sgp.sgp_draw_filled_triangles(@ptrCast(tris[0..segment_count]), @intCast(segment_count));
}

pub fn drawArcLine(x: f32, y: f32, radius: f32, start_angle: f32, end_angle: f32) void {
    // Ensure start_angle is less than end_angle
    var start = start_angle;
    var end = end_angle;
    if (start > end) {
        const temp = start;
        start = end;
        end = temp;
    }

    // Calculate number of segments needed
    const angle_range = end - start;
    const segment_count = @max(10, @as(usize, @intFromFloat(angle_range * radius / pi)));
    const angle_step = angle_range / @as(f32, @floatFromInt(segment_count));

    // Create array of points
    var points: [max_circle_tris + 1]sgp.sgp_point = undefined;

    // Generate arc points
    for (0..segment_count + 1) |i| {
        const angle = start + @as(f32, @floatFromInt(i)) * angle_step;
        points[i] = .{ .x = x + radius * @cos(angle), .y = y + radius * @sin(angle) };
    }

    // Draw arc using lines
    var lines: [max_circle_tris]sgp.sgp_line = undefined;
    for (0..segment_count) |i| {
        lines[i] = .{ .a = points[i], .b = points[i + 1] };
    }

    sgp.sgp_draw_lines(@ptrCast(lines[0..segment_count]), @intCast(segment_count));
}
