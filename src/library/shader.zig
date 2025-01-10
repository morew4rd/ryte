const std = @import("std");
const builtin = @import("builtin");
const sg = @import("sokol_gfx");
const sgp = @import("sokol_gp");

pub const UniformType = enum {
    Float,
    Vec2,
    Vec3,
    Vec4,
    Int,
    IVec2,
    IVec3,
    IVec4,
    Mat4,
    Sampler2D,
};

pub const UniformDefinition = struct {
    name: []const u8,
    type: UniformType,
    float_count: usize,
    location: usize,
};

pub const ShaderBuilder = struct {
    uniforms: std.ArrayList(UniformDefinition),
    vert_code: []const u8,
    frag_code: []const u8,
};

pub const Shader = struct {
    uniforms: []UniformDefinition,
    uniform_floats: []f32,
    images: []sg.sg_image,
    pip_id: u32,
    shd_id: u32,
    num_uniform_floats: usize,
    num_images: usize,
};

pub fn newShaderBuilder(allocator: std.mem.Allocator) !ShaderBuilder {
    return ShaderBuilder{
        .uniforms = std.ArrayList(UniformDefinition).init(allocator),
        .vert_code = "",
        .frag_code = "",
    };
}

pub fn shaderBuilderUniform(builder: *ShaderBuilder, name: []const u8, uniform_type: UniformType) !void {
    const count: usize = switch (uniform_type) {
        .Float, .Int => 1,
        .Vec2, .IVec2 => 2,
        .Vec3, .IVec3 => 3,
        .Vec4, .IVec4 => 4,
        .Mat4 => 16,
        .Sampler2D => 0,
    };

    try builder.uniforms.append(.{
        .name = name,
        .type = uniform_type,
        .float_count = count,
        .location = 0,
    });
}

pub fn shaderBuilderVertex(builder: *ShaderBuilder, code: []const u8) void {
    builder.vert_code = code;
}

pub fn shaderBuilderFragment(builder: *ShaderBuilder, code: []const u8) void {
    builder.frag_code = code;
}

const ShaderHeader = if (builtin.target.isWasm())
    "#version 300 es\nprecision highp float;\n// ---\n"
else
    "#version 330\n// ---\n\n";

const VertFooter = "\n// ---\nvoid main() { vert_main(); }\n";
const FragFooter = "\n// ---\nvoid main() { frag_main(); }\n";
const FragHeader1 = "uniform sampler2D current_image;\n";
const FragHeader2 = "uniform vec4 current_color;\n";
const FragSep = "// ---\n\n";

fn getUniformsCode(builder: *ShaderBuilder, allocator: std.mem.Allocator) ![]const u8 {
    var code = std.ArrayList(u8).init(allocator);
    defer code.deinit();

    try code.appendSlice("// uniform declarations...\n");

    for (builder.uniforms.items) |uniform| {
        const type_str = switch (uniform.type) {
            .Float => "float",
            .Vec2 => "vec2",
            .Vec3 => "vec3",
            .Vec4 => "vec4",
            .Int => "int",
            .IVec2 => "ivec2",
            .IVec3 => "ivec3",
            .IVec4 => "ivec4",
            .Mat4 => "mat4",
            .Sampler2D => "sampler2D",
        };
        try code.writer().print("uniform {s} {s};\n", .{ type_str, uniform.name });
    }

    // try code.append(0); // Null-terminate
    return code.toOwnedSlice();
}

fn getVertexCode(builder: *ShaderBuilder, allocator: std.mem.Allocator, uniforms_text: []const u8) ![]const u8 {
    var code = std.ArrayList(u8).init(allocator);
    defer code.deinit();

    try code.writer().print("{s}{s}{s}{s}{s}\x00", .{
        ShaderHeader,
        uniforms_text,
        FragSep,
        builder.vert_code,
        VertFooter,
    });

    // try code.append(0); // Null-terminate
    return code.toOwnedSlice();
}

fn getFragmentCode(builder: *ShaderBuilder, allocator: std.mem.Allocator, uniforms_text: []const u8) ![]const u8 {
    var code = std.ArrayList(u8).init(allocator);
    defer code.deinit();

    try code.writer().print("{s}{s}{s}{s}{s}{s}{s}\x00", .{
        ShaderHeader,
        FragHeader1,
        FragHeader2,
        FragSep,
        uniforms_text,
        builder.frag_code,
        FragFooter,
    });

    // try code.append(0); // Null-terminate
    return code.toOwnedSlice();
}

pub fn shaderBuilderBuild(builder: *ShaderBuilder, allocator: std.mem.Allocator) !Shader {
    const uniforms_code = try getUniformsCode(builder, allocator);
    defer allocator.free(uniforms_code);

    const vertex_code = try getVertexCode(builder, allocator, uniforms_code);
    defer allocator.free(vertex_code);

    const fragment_code = try getFragmentCode(builder, allocator, uniforms_code);
    defer allocator.free(fragment_code);

    var shader = Shader{
        .uniforms = try allocator.alloc(UniformDefinition, builder.uniforms.items.len),
        .uniform_floats = try allocator.alloc(f32, sgp.SGP_UNIFORM_CONTENT_SLOTS),
        .images = try allocator.alloc(sg.sg_image, sgp.SGP_TEXTURE_SLOTS),
        .pip_id = 0,
        .shd_id = 0,
        .num_images = 0,
        .num_uniform_floats = 0,
    };

    // Calculate actual number of floats and images needed
    var num_uniform_floats: usize = 4; // Start with current_color
    var num_images: usize = 1; // Start with current_image

    for (builder.uniforms.items) |uniform| {
        if (uniform.type == .Sampler2D) {
            num_images += 1;
        } else {
            num_uniform_floats += uniform.float_count;
        }
    }

    shader.num_uniform_floats = num_uniform_floats;

    @memcpy(shader.uniforms, builder.uniforms.items);
    @memset(shader.uniform_floats, 0);
    @memset(shader.images, .{ .id = 0 });

    var shader_desc: sg.sg_shader_desc = .{};
    shader_desc.label = "lyteshaderprogram";

    // Ensure proper null-termination
    shader_desc.vs.source = vertex_code.ptr;
    shader_desc.fs.source = fragment_code.ptr;
    shader_desc.vs.entry = "main";
    shader_desc.fs.entry = "main";

    // Initialize uniform blocks
    shader_desc.fs.uniform_blocks[0] = .{
        .uniforms = undefined,
        .size = 0,
    };
    shader_desc.vs.uniform_blocks[0] = .{
        .uniforms = undefined,
        .size = 0,
    };

    // "MAGIC" uniforms: vec4 current_color and sampler2D current_image

    // Current color uniform
    shader_desc.fs.uniform_blocks[0].uniforms[0] = .{
        .name = "current_color",
        .type = sg.SG_UNIFORMTYPE_FLOAT4,
        .array_count = 1,
    };
    shader_desc.vs.uniform_blocks[0].uniforms[0] = .{
        .name = "current_color",
        .type = sg.SG_UNIFORMTYPE_FLOAT4,
        .array_count = 1,
    };

    // Current image sampler
    shader_desc.fs.image_sampler_pairs[0] = .{
        .glsl_name = "current_image",
        .used = true,
        .image_slot = 0,
        .sampler_slot = 0,
    };
    shader_desc.fs.samplers[0].used = true;
    shader_desc.fs.images[0] = .{
        .used = true,
        .image_type = sg.SG_IMAGETYPE_2D,
        .sample_type = sg.SG_IMAGESAMPLETYPE_FLOAT,
    };

    // Process user uniforms
    var flt_idx: usize = 1;
    var img_idx: usize = 1;
    var uniform_float_count: usize = 4; // rgba of "current_color"

    for (shader.uniforms) |*uniform| {
        if (uniform.type == .Sampler2D) {
            shader_desc.fs.image_sampler_pairs[img_idx] = .{
                .glsl_name = uniform.name.ptr,
                .used = true,
                .image_slot = @intCast(img_idx),
                .sampler_slot = @intCast(img_idx),
            };
            shader_desc.fs.samplers[img_idx].used = true;
            shader_desc.fs.images[img_idx] = .{
                .used = true,
                .image_type = sg.SG_IMAGETYPE_2D,
                .sample_type = sg.SG_IMAGESAMPLETYPE_FLOAT,
            };
            uniform.location = img_idx;
            img_idx += 1;
        } else {
            const uniform_type: sg.sg_uniform_type = switch (uniform.type) {
                .Float => sg.SG_UNIFORMTYPE_FLOAT,
                .Vec2 => sg.SG_UNIFORMTYPE_FLOAT2,
                .Vec3 => sg.SG_UNIFORMTYPE_FLOAT3,
                .Vec4 => sg.SG_UNIFORMTYPE_FLOAT4,
                .Int => sg.SG_UNIFORMTYPE_INT,
                .IVec2 => sg.SG_UNIFORMTYPE_INT2,
                .IVec3 => sg.SG_UNIFORMTYPE_INT3,
                .IVec4 => sg.SG_UNIFORMTYPE_INT4,
                .Mat4 => sg.SG_UNIFORMTYPE_MAT4,
                else => unreachable,
            };

            shader_desc.fs.uniform_blocks[0].uniforms[flt_idx] = .{
                .name = uniform.name.ptr,
                .type = uniform_type,
                .array_count = 1,
            };
            shader_desc.vs.uniform_blocks[0].uniforms[flt_idx] = .{
                .name = uniform.name.ptr,
                .type = uniform_type,
                .array_count = 1,
            };
            uniform.location = uniform_float_count;
            uniform_float_count += uniform.float_count;
            flt_idx += 1;
        }
    }

    shader_desc.fs.uniform_blocks[0].size = uniform_float_count * @sizeOf(f32);

    if (builtin.mode == .Debug) {
        // Print generated shader code for debugging
        std.debug.print("!!!Vertex Shader:\n{s}\n", .{vertex_code});
        std.debug.print("!!!Fragment Shader:\n{s}\n", .{fragment_code});
    }

    const sgshd = sg.sg_make_shader(&shader_desc);
    const shader_state = sg.sg_query_shader_state(sgshd);

    if (shader_state != sg.SG_RESOURCESTATE_VALID) {
        // Print shader info log if available
        if (sgshd.id != 0) {
            const info = sg.sg_query_shader_info(sgshd);
            std.debug.print("!!! Shader info log: {}\n", .{info});
        }
        return error.ShaderCreationFailed;
    }

    var pip_desc: sgp.sgp_pipeline_desc = .{
        .blend_mode = 0, // Default blend mode
        .shader = @bitCast(sgshd),
    };

    const pip = sgp.sgp_make_pipeline(&pip_desc);
    const pip_state = sg.sg_query_pipeline_state(@bitCast(pip));
    if (pip_state != sg.SG_RESOURCESTATE_VALID) {
        sg.sg_destroy_shader(sgshd);
        return error.PipelineCreationFailed;
    }

    shader.pip_id = pip.id;
    shader.shd_id = sgshd.id;

    return shader;
}

pub fn setShader(shader: *Shader) void {
    sgp.sgp_set_pipeline(.{ .id = shader.pip_id });
    @memcpy(shader.uniform_floats[0..4], &[_]f32{ 1.0, 1.0, 1.0, 1.0 }); // Default color
    sgp.sgp_set_uniform(shader.uniform_floats.ptr, @intCast(shader.num_uniform_floats * @sizeOf(f32)));
}

pub fn resetShader() void {
    sgp.sgp_reset_pipeline();
}

pub fn cleanupShader(shader: *Shader, allocator: std.mem.Allocator) void {
    allocator.free(shader.uniforms);
    allocator.free(shader.uniform_floats);
    allocator.free(shader.images);
    sg.sg_destroy_pipeline(.{ .id = shader.pip_id });
    sg.sg_destroy_shader(.{ .id = shader.shd_id });
}

pub const UniformValue = union(enum) {
    float: f32,
    vec2: struct {
        data: [2]f32,
        count: usize,
    },
    vec3: struct {
        data: [3]f32,
        count: usize,
    },
    vec4: struct {
        data: [4]f32,
        count: usize,
    },
    sampler2D: sg.sg_image,
};

pub fn setShaderUniform(shader: *Shader, name: []const u8, value: UniformValue) !void {
    const uniform = for (shader.uniforms) |*u| {
        if (std.mem.eql(u8, u.name, name)) break u;
    } else {
        return error.UnknownUniform;
    };

    switch (value) {
        .float => |f| {
            shader.uniform_floats[uniform.location] = f;
        },
        .vec2 => |v| {
            const count = @min(@max(v.count, uniform.float_count), 2);
            @memcpy(shader.uniform_floats[uniform.location..][0..count], v.data[0..count]);
        },
        .vec3 => |v| {
            const count = @min(@max(v.count, uniform.float_count), 3);
            @memcpy(shader.uniform_floats[uniform.location..][0..count], v.data[0..count]);
        },
        .vec4 => |v| {
            const count = @min(@max(v.count, uniform.float_count), 4);
            @memcpy(shader.uniform_floats[uniform.location..][0..count], v.data[0..count]);
        },
        .sampler2D => |img| {
            shader.images[uniform.location] = img;
            sgp.sgp_set_image(@intCast(uniform.location), @bitCast(img));
        },
    }

    @memcpy(shader.uniform_floats[0..4], &[_]f32{ 1.0, 1.0, 1.0, 1.0 }); // Default color
    sgp.sgp_set_uniform(shader.uniform_floats.ptr, @intCast(shader.num_uniform_floats * @sizeOf(f32)));
}

pub fn resetShaderUniform(shader: *Shader, name: []const u8) !void {
    const uniform = for (shader.uniforms) |*u| {
        if (std.mem.eql(u8, u.name, name)) break u;
    } else {
        return error.UnknownUniform;
    };

    @memset(shader.uniform_floats[uniform.location..][0..uniform.float_count], 0);
    @memcpy(shader.uniform_floats[0..4], &[_]f32{ 1.0, 1.0, 1.0, 1.0 }); // Default color
    sgp.sgp_set_uniform(shader.uniform_floats.ptr, @intCast(shader.num_uniform_floats * @sizeOf(f32)));
}
