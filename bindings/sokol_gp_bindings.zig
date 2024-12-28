pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_labs = @import("std").zig.c_builtins.__builtin_labs;
pub const __builtin_llabs = @import("std").zig.c_builtins.__builtin_llabs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub const __has_builtin = @import("std").zig.c_builtins.__has_builtin;
pub const __builtin_assume = @import("std").zig.c_builtins.__builtin_assume;
pub const __builtin_unreachable = @import("std").zig.c_builtins.__builtin_unreachable;
pub const __builtin_constant_p = @import("std").zig.c_builtins.__builtin_constant_p;
pub const __builtin_mul_overflow = @import("std").zig.c_builtins.__builtin_mul_overflow;
pub const ptrdiff_t = c_long;
pub const wchar_t = c_int;
pub const max_align_t = c_longdouble;
pub const int_least8_t = i8;
pub const int_least16_t = i16;
pub const int_least32_t = i32;
pub const int_least64_t = i64;
pub const uint_least8_t = u8;
pub const uint_least16_t = u16;
pub const uint_least32_t = u32;
pub const uint_least64_t = u64;
pub const int_fast8_t = i8;
pub const int_fast16_t = i16;
pub const int_fast32_t = i32;
pub const int_fast64_t = i64;
pub const uint_fast8_t = u8;
pub const uint_fast16_t = u16;
pub const uint_fast32_t = u32;
pub const uint_fast64_t = u64;
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_longlong;
pub const __uint64_t = c_ulonglong;
pub const __darwin_intptr_t = c_long;
pub const __darwin_natural_t = c_uint;
pub const __darwin_ct_rune_t = c_int;
pub const __mbstate_t = extern union {
    __mbstate8: [128]u8,
    _mbstateL: c_longlong,
};
pub const __darwin_mbstate_t = __mbstate_t;
pub const __darwin_ptrdiff_t = c_long;
pub const __darwin_size_t = c_ulong;
pub const __builtin_va_list = [*c]u8;
pub const __darwin_va_list = __builtin_va_list;
pub const __darwin_wchar_t = c_int;
pub const __darwin_rune_t = __darwin_wchar_t;
pub const __darwin_wint_t = c_int;
pub const __darwin_clock_t = c_ulong;
pub const __darwin_socklen_t = __uint32_t;
pub const __darwin_ssize_t = c_long;
pub const __darwin_time_t = c_long;
pub const __darwin_blkcnt_t = __int64_t;
pub const __darwin_blksize_t = __int32_t;
pub const __darwin_dev_t = __int32_t;
pub const __darwin_fsblkcnt_t = c_uint;
pub const __darwin_fsfilcnt_t = c_uint;
pub const __darwin_gid_t = __uint32_t;
pub const __darwin_id_t = __uint32_t;
pub const __darwin_ino64_t = __uint64_t;
pub const __darwin_ino_t = __darwin_ino64_t;
pub const __darwin_mach_port_name_t = __darwin_natural_t;
pub const __darwin_mach_port_t = __darwin_mach_port_name_t;
pub const __darwin_mode_t = __uint16_t;
pub const __darwin_off_t = __int64_t;
pub const __darwin_pid_t = __int32_t;
pub const __darwin_sigset_t = __uint32_t;
pub const __darwin_suseconds_t = __int32_t;
pub const __darwin_uid_t = __uint32_t;
pub const __darwin_useconds_t = __uint32_t;
pub const __darwin_uuid_t = [16]u8;
pub const __darwin_uuid_string_t = [37]u8;
pub const struct___darwin_pthread_handler_rec = extern struct {
    __routine: ?*const fn (?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.c) void),
    __arg: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    __next: [*c]struct___darwin_pthread_handler_rec = @import("std").mem.zeroes([*c]struct___darwin_pthread_handler_rec),
};
pub const struct__opaque_pthread_attr_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [56]u8 = @import("std").mem.zeroes([56]u8),
};
pub const struct__opaque_pthread_cond_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [40]u8 = @import("std").mem.zeroes([40]u8),
};
pub const struct__opaque_pthread_condattr_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [8]u8 = @import("std").mem.zeroes([8]u8),
};
pub const struct__opaque_pthread_mutex_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [56]u8 = @import("std").mem.zeroes([56]u8),
};
pub const struct__opaque_pthread_mutexattr_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [8]u8 = @import("std").mem.zeroes([8]u8),
};
pub const struct__opaque_pthread_once_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [8]u8 = @import("std").mem.zeroes([8]u8),
};
pub const struct__opaque_pthread_rwlock_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [192]u8 = @import("std").mem.zeroes([192]u8),
};
pub const struct__opaque_pthread_rwlockattr_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [16]u8 = @import("std").mem.zeroes([16]u8),
};
pub const struct__opaque_pthread_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __cleanup_stack: [*c]struct___darwin_pthread_handler_rec = @import("std").mem.zeroes([*c]struct___darwin_pthread_handler_rec),
    __opaque: [8176]u8 = @import("std").mem.zeroes([8176]u8),
};
pub const __darwin_pthread_attr_t = struct__opaque_pthread_attr_t;
pub const __darwin_pthread_cond_t = struct__opaque_pthread_cond_t;
pub const __darwin_pthread_condattr_t = struct__opaque_pthread_condattr_t;
pub const __darwin_pthread_key_t = c_ulong;
pub const __darwin_pthread_mutex_t = struct__opaque_pthread_mutex_t;
pub const __darwin_pthread_mutexattr_t = struct__opaque_pthread_mutexattr_t;
pub const __darwin_pthread_once_t = struct__opaque_pthread_once_t;
pub const __darwin_pthread_rwlock_t = struct__opaque_pthread_rwlock_t;
pub const __darwin_pthread_rwlockattr_t = struct__opaque_pthread_rwlockattr_t;
pub const __darwin_pthread_t = [*c]struct__opaque_pthread_t;
pub const u_int8_t = u8;
pub const u_int16_t = c_ushort;
pub const u_int32_t = c_uint;
pub const u_int64_t = c_ulonglong;
pub const register_t = i64;
pub const user_addr_t = u_int64_t;
pub const user_size_t = u_int64_t;
pub const user_ssize_t = i64;
pub const user_long_t = i64;
pub const user_ulong_t = u_int64_t;
pub const user_time_t = i64;
pub const user_off_t = i64;
pub const syscall_arg_t = u_int64_t;
pub const intmax_t = c_long;
pub const uintmax_t = c_ulong;
pub const struct_sg_buffer = extern struct {
    id: u32 = @import("std").mem.zeroes(u32),
};
pub const sg_buffer = struct_sg_buffer;
pub const struct_sg_image = extern struct {
    id: u32 = @import("std").mem.zeroes(u32),
};
pub const sg_image = struct_sg_image;
pub const struct_sg_sampler = extern struct {
    id: u32 = @import("std").mem.zeroes(u32),
};
pub const sg_sampler = struct_sg_sampler;
pub const struct_sg_shader = extern struct {
    id: u32 = @import("std").mem.zeroes(u32),
};
pub const sg_shader = struct_sg_shader;
pub const struct_sg_pipeline = extern struct {
    id: u32 = @import("std").mem.zeroes(u32),
};
pub const sg_pipeline = struct_sg_pipeline;
pub const struct_sg_attachments = extern struct {
    id: u32 = @import("std").mem.zeroes(u32),
};
pub const sg_attachments = struct_sg_attachments;
pub const struct_sg_range = extern struct {
    ptr: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    size: usize = @import("std").mem.zeroes(usize),
};
pub const sg_range = struct_sg_range;
pub const SG_INVALID_ID: c_int = 0;
pub const SG_NUM_SHADER_STAGES: c_int = 2;
pub const SG_NUM_INFLIGHT_FRAMES: c_int = 2;
pub const SG_MAX_COLOR_ATTACHMENTS: c_int = 4;
pub const SG_MAX_VERTEX_BUFFERS: c_int = 8;
pub const SG_MAX_SHADERSTAGE_IMAGES: c_int = 12;
pub const SG_MAX_SHADERSTAGE_SAMPLERS: c_int = 8;
pub const SG_MAX_SHADERSTAGE_IMAGESAMPLERPAIRS: c_int = 12;
pub const SG_MAX_SHADERSTAGE_STORAGEBUFFERS: c_int = 8;
pub const SG_MAX_SHADERSTAGE_UBS: c_int = 4;
pub const SG_MAX_UB_MEMBERS: c_int = 16;
pub const SG_MAX_VERTEX_ATTRIBUTES: c_int = 16;
pub const SG_MAX_MIPMAPS: c_int = 16;
pub const SG_MAX_TEXTUREARRAY_LAYERS: c_int = 128;
const enum_unnamed_1 = c_uint;
pub const struct_sg_color = extern struct {
    r: f32 = @import("std").mem.zeroes(f32),
    g: f32 = @import("std").mem.zeroes(f32),
    b: f32 = @import("std").mem.zeroes(f32),
    a: f32 = @import("std").mem.zeroes(f32),
};
pub const sg_color = struct_sg_color;
pub const SG_BACKEND_GLCORE: c_int = 0;
pub const SG_BACKEND_GLES3: c_int = 1;
pub const SG_BACKEND_D3D11: c_int = 2;
pub const SG_BACKEND_METAL_IOS: c_int = 3;
pub const SG_BACKEND_METAL_MACOS: c_int = 4;
pub const SG_BACKEND_METAL_SIMULATOR: c_int = 5;
pub const SG_BACKEND_WGPU: c_int = 6;
pub const SG_BACKEND_DUMMY: c_int = 7;
pub const enum_sg_backend = c_uint;
pub const sg_backend = enum_sg_backend;
pub const _SG_PIXELFORMAT_DEFAULT: c_int = 0;
pub const SG_PIXELFORMAT_NONE: c_int = 1;
pub const SG_PIXELFORMAT_R8: c_int = 2;
pub const SG_PIXELFORMAT_R8SN: c_int = 3;
pub const SG_PIXELFORMAT_R8UI: c_int = 4;
pub const SG_PIXELFORMAT_R8SI: c_int = 5;
pub const SG_PIXELFORMAT_R16: c_int = 6;
pub const SG_PIXELFORMAT_R16SN: c_int = 7;
pub const SG_PIXELFORMAT_R16UI: c_int = 8;
pub const SG_PIXELFORMAT_R16SI: c_int = 9;
pub const SG_PIXELFORMAT_R16F: c_int = 10;
pub const SG_PIXELFORMAT_RG8: c_int = 11;
pub const SG_PIXELFORMAT_RG8SN: c_int = 12;
pub const SG_PIXELFORMAT_RG8UI: c_int = 13;
pub const SG_PIXELFORMAT_RG8SI: c_int = 14;
pub const SG_PIXELFORMAT_R32UI: c_int = 15;
pub const SG_PIXELFORMAT_R32SI: c_int = 16;
pub const SG_PIXELFORMAT_R32F: c_int = 17;
pub const SG_PIXELFORMAT_RG16: c_int = 18;
pub const SG_PIXELFORMAT_RG16SN: c_int = 19;
pub const SG_PIXELFORMAT_RG16UI: c_int = 20;
pub const SG_PIXELFORMAT_RG16SI: c_int = 21;
pub const SG_PIXELFORMAT_RG16F: c_int = 22;
pub const SG_PIXELFORMAT_RGBA8: c_int = 23;
pub const SG_PIXELFORMAT_SRGB8A8: c_int = 24;
pub const SG_PIXELFORMAT_RGBA8SN: c_int = 25;
pub const SG_PIXELFORMAT_RGBA8UI: c_int = 26;
pub const SG_PIXELFORMAT_RGBA8SI: c_int = 27;
pub const SG_PIXELFORMAT_BGRA8: c_int = 28;
pub const SG_PIXELFORMAT_RGB10A2: c_int = 29;
pub const SG_PIXELFORMAT_RG11B10F: c_int = 30;
pub const SG_PIXELFORMAT_RGB9E5: c_int = 31;
pub const SG_PIXELFORMAT_RG32UI: c_int = 32;
pub const SG_PIXELFORMAT_RG32SI: c_int = 33;
pub const SG_PIXELFORMAT_RG32F: c_int = 34;
pub const SG_PIXELFORMAT_RGBA16: c_int = 35;
pub const SG_PIXELFORMAT_RGBA16SN: c_int = 36;
pub const SG_PIXELFORMAT_RGBA16UI: c_int = 37;
pub const SG_PIXELFORMAT_RGBA16SI: c_int = 38;
pub const SG_PIXELFORMAT_RGBA16F: c_int = 39;
pub const SG_PIXELFORMAT_RGBA32UI: c_int = 40;
pub const SG_PIXELFORMAT_RGBA32SI: c_int = 41;
pub const SG_PIXELFORMAT_RGBA32F: c_int = 42;
pub const SG_PIXELFORMAT_DEPTH: c_int = 43;
pub const SG_PIXELFORMAT_DEPTH_STENCIL: c_int = 44;
pub const SG_PIXELFORMAT_BC1_RGBA: c_int = 45;
pub const SG_PIXELFORMAT_BC2_RGBA: c_int = 46;
pub const SG_PIXELFORMAT_BC3_RGBA: c_int = 47;
pub const SG_PIXELFORMAT_BC3_SRGBA: c_int = 48;
pub const SG_PIXELFORMAT_BC4_R: c_int = 49;
pub const SG_PIXELFORMAT_BC4_RSN: c_int = 50;
pub const SG_PIXELFORMAT_BC5_RG: c_int = 51;
pub const SG_PIXELFORMAT_BC5_RGSN: c_int = 52;
pub const SG_PIXELFORMAT_BC6H_RGBF: c_int = 53;
pub const SG_PIXELFORMAT_BC6H_RGBUF: c_int = 54;
pub const SG_PIXELFORMAT_BC7_RGBA: c_int = 55;
pub const SG_PIXELFORMAT_BC7_SRGBA: c_int = 56;
pub const SG_PIXELFORMAT_PVRTC_RGB_2BPP: c_int = 57;
pub const SG_PIXELFORMAT_PVRTC_RGB_4BPP: c_int = 58;
pub const SG_PIXELFORMAT_PVRTC_RGBA_2BPP: c_int = 59;
pub const SG_PIXELFORMAT_PVRTC_RGBA_4BPP: c_int = 60;
pub const SG_PIXELFORMAT_ETC2_RGB8: c_int = 61;
pub const SG_PIXELFORMAT_ETC2_SRGB8: c_int = 62;
pub const SG_PIXELFORMAT_ETC2_RGB8A1: c_int = 63;
pub const SG_PIXELFORMAT_ETC2_RGBA8: c_int = 64;
pub const SG_PIXELFORMAT_ETC2_SRGB8A8: c_int = 65;
pub const SG_PIXELFORMAT_EAC_R11: c_int = 66;
pub const SG_PIXELFORMAT_EAC_R11SN: c_int = 67;
pub const SG_PIXELFORMAT_EAC_RG11: c_int = 68;
pub const SG_PIXELFORMAT_EAC_RG11SN: c_int = 69;
pub const SG_PIXELFORMAT_ASTC_4x4_RGBA: c_int = 70;
pub const SG_PIXELFORMAT_ASTC_4x4_SRGBA: c_int = 71;
pub const _SG_PIXELFORMAT_NUM: c_int = 72;
pub const _SG_PIXELFORMAT_FORCE_U32: c_int = 2147483647;
pub const enum_sg_pixel_format = c_uint;
pub const sg_pixel_format = enum_sg_pixel_format;
pub const struct_sg_pixelformat_info = extern struct {
    sample: bool = @import("std").mem.zeroes(bool),
    filter: bool = @import("std").mem.zeroes(bool),
    render: bool = @import("std").mem.zeroes(bool),
    blend: bool = @import("std").mem.zeroes(bool),
    msaa: bool = @import("std").mem.zeroes(bool),
    depth: bool = @import("std").mem.zeroes(bool),
    compressed: bool = @import("std").mem.zeroes(bool),
    bytes_per_pixel: c_int = @import("std").mem.zeroes(c_int),
};
pub const sg_pixelformat_info = struct_sg_pixelformat_info;
pub const struct_sg_features = extern struct {
    origin_top_left: bool = @import("std").mem.zeroes(bool),
    image_clamp_to_border: bool = @import("std").mem.zeroes(bool),
    mrt_independent_blend_state: bool = @import("std").mem.zeroes(bool),
    mrt_independent_write_mask: bool = @import("std").mem.zeroes(bool),
    storage_buffer: bool = @import("std").mem.zeroes(bool),
};
pub const sg_features = struct_sg_features;
pub const struct_sg_limits = extern struct {
    max_image_size_2d: c_int = @import("std").mem.zeroes(c_int),
    max_image_size_cube: c_int = @import("std").mem.zeroes(c_int),
    max_image_size_3d: c_int = @import("std").mem.zeroes(c_int),
    max_image_size_array: c_int = @import("std").mem.zeroes(c_int),
    max_image_array_layers: c_int = @import("std").mem.zeroes(c_int),
    max_vertex_attrs: c_int = @import("std").mem.zeroes(c_int),
    gl_max_vertex_uniform_components: c_int = @import("std").mem.zeroes(c_int),
    gl_max_combined_texture_image_units: c_int = @import("std").mem.zeroes(c_int),
};
pub const sg_limits = struct_sg_limits;
pub const SG_RESOURCESTATE_INITIAL: c_int = 0;
pub const SG_RESOURCESTATE_ALLOC: c_int = 1;
pub const SG_RESOURCESTATE_VALID: c_int = 2;
pub const SG_RESOURCESTATE_FAILED: c_int = 3;
pub const SG_RESOURCESTATE_INVALID: c_int = 4;
pub const _SG_RESOURCESTATE_FORCE_U32: c_int = 2147483647;
pub const enum_sg_resource_state = c_uint;
pub const sg_resource_state = enum_sg_resource_state;
pub const _SG_USAGE_DEFAULT: c_int = 0;
pub const SG_USAGE_IMMUTABLE: c_int = 1;
pub const SG_USAGE_DYNAMIC: c_int = 2;
pub const SG_USAGE_STREAM: c_int = 3;
pub const _SG_USAGE_NUM: c_int = 4;
pub const _SG_USAGE_FORCE_U32: c_int = 2147483647;
pub const enum_sg_usage = c_uint;
pub const sg_usage = enum_sg_usage;
pub const _SG_BUFFERTYPE_DEFAULT: c_int = 0;
pub const SG_BUFFERTYPE_VERTEXBUFFER: c_int = 1;
pub const SG_BUFFERTYPE_INDEXBUFFER: c_int = 2;
pub const SG_BUFFERTYPE_STORAGEBUFFER: c_int = 3;
pub const _SG_BUFFERTYPE_NUM: c_int = 4;
pub const _SG_BUFFERTYPE_FORCE_U32: c_int = 2147483647;
pub const enum_sg_buffer_type = c_uint;
pub const sg_buffer_type = enum_sg_buffer_type;
pub const _SG_INDEXTYPE_DEFAULT: c_int = 0;
pub const SG_INDEXTYPE_NONE: c_int = 1;
pub const SG_INDEXTYPE_UINT16: c_int = 2;
pub const SG_INDEXTYPE_UINT32: c_int = 3;
pub const _SG_INDEXTYPE_NUM: c_int = 4;
pub const _SG_INDEXTYPE_FORCE_U32: c_int = 2147483647;
pub const enum_sg_index_type = c_uint;
pub const sg_index_type = enum_sg_index_type;
pub const _SG_IMAGETYPE_DEFAULT: c_int = 0;
pub const SG_IMAGETYPE_2D: c_int = 1;
pub const SG_IMAGETYPE_CUBE: c_int = 2;
pub const SG_IMAGETYPE_3D: c_int = 3;
pub const SG_IMAGETYPE_ARRAY: c_int = 4;
pub const _SG_IMAGETYPE_NUM: c_int = 5;
pub const _SG_IMAGETYPE_FORCE_U32: c_int = 2147483647;
pub const enum_sg_image_type = c_uint;
pub const sg_image_type = enum_sg_image_type;
pub const _SG_IMAGESAMPLETYPE_DEFAULT: c_int = 0;
pub const SG_IMAGESAMPLETYPE_FLOAT: c_int = 1;
pub const SG_IMAGESAMPLETYPE_DEPTH: c_int = 2;
pub const SG_IMAGESAMPLETYPE_SINT: c_int = 3;
pub const SG_IMAGESAMPLETYPE_UINT: c_int = 4;
pub const SG_IMAGESAMPLETYPE_UNFILTERABLE_FLOAT: c_int = 5;
pub const _SG_IMAGESAMPLETYPE_NUM: c_int = 6;
pub const _SG_IMAGESAMPLETYPE_FORCE_U32: c_int = 2147483647;
pub const enum_sg_image_sample_type = c_uint;
pub const sg_image_sample_type = enum_sg_image_sample_type;
pub const _SG_SAMPLERTYPE_DEFAULT: c_int = 0;
pub const SG_SAMPLERTYPE_FILTERING: c_int = 1;
pub const SG_SAMPLERTYPE_NONFILTERING: c_int = 2;
pub const SG_SAMPLERTYPE_COMPARISON: c_int = 3;
pub const _SG_SAMPLERTYPE_NUM: c_int = 4;
pub const _SG_SAMPLERTYPE_FORCE_U32: c_int = 5;
pub const enum_sg_sampler_type = c_uint;
pub const sg_sampler_type = enum_sg_sampler_type;
pub const SG_CUBEFACE_POS_X: c_int = 0;
pub const SG_CUBEFACE_NEG_X: c_int = 1;
pub const SG_CUBEFACE_POS_Y: c_int = 2;
pub const SG_CUBEFACE_NEG_Y: c_int = 3;
pub const SG_CUBEFACE_POS_Z: c_int = 4;
pub const SG_CUBEFACE_NEG_Z: c_int = 5;
pub const SG_CUBEFACE_NUM: c_int = 6;
pub const _SG_CUBEFACE_FORCE_U32: c_int = 2147483647;
pub const enum_sg_cube_face = c_uint;
pub const sg_cube_face = enum_sg_cube_face;
pub const SG_SHADERSTAGE_VS: c_int = 0;
pub const SG_SHADERSTAGE_FS: c_int = 1;
pub const _SG_SHADERSTAGE_FORCE_U32: c_int = 2147483647;
pub const enum_sg_shader_stage = c_uint;
pub const sg_shader_stage = enum_sg_shader_stage;
pub const _SG_PRIMITIVETYPE_DEFAULT: c_int = 0;
pub const SG_PRIMITIVETYPE_POINTS: c_int = 1;
pub const SG_PRIMITIVETYPE_LINES: c_int = 2;
pub const SG_PRIMITIVETYPE_LINE_STRIP: c_int = 3;
pub const SG_PRIMITIVETYPE_TRIANGLES: c_int = 4;
pub const SG_PRIMITIVETYPE_TRIANGLE_STRIP: c_int = 5;
pub const _SG_PRIMITIVETYPE_NUM: c_int = 6;
pub const _SG_PRIMITIVETYPE_FORCE_U32: c_int = 2147483647;
pub const enum_sg_primitive_type = c_uint;
pub const sg_primitive_type = enum_sg_primitive_type;
pub const _SG_FILTER_DEFAULT: c_int = 0;
pub const SG_FILTER_NONE: c_int = 1;
pub const SG_FILTER_NEAREST: c_int = 2;
pub const SG_FILTER_LINEAR: c_int = 3;
pub const _SG_FILTER_NUM: c_int = 4;
pub const _SG_FILTER_FORCE_U32: c_int = 2147483647;
pub const enum_sg_filter = c_uint;
pub const sg_filter = enum_sg_filter;
pub const _SG_WRAP_DEFAULT: c_int = 0;
pub const SG_WRAP_REPEAT: c_int = 1;
pub const SG_WRAP_CLAMP_TO_EDGE: c_int = 2;
pub const SG_WRAP_CLAMP_TO_BORDER: c_int = 3;
pub const SG_WRAP_MIRRORED_REPEAT: c_int = 4;
pub const _SG_WRAP_NUM: c_int = 5;
pub const _SG_WRAP_FORCE_U32: c_int = 2147483647;
pub const enum_sg_wrap = c_uint;
pub const sg_wrap = enum_sg_wrap;
pub const _SG_BORDERCOLOR_DEFAULT: c_int = 0;
pub const SG_BORDERCOLOR_TRANSPARENT_BLACK: c_int = 1;
pub const SG_BORDERCOLOR_OPAQUE_BLACK: c_int = 2;
pub const SG_BORDERCOLOR_OPAQUE_WHITE: c_int = 3;
pub const _SG_BORDERCOLOR_NUM: c_int = 4;
pub const _SG_BORDERCOLOR_FORCE_U32: c_int = 2147483647;
pub const enum_sg_border_color = c_uint;
pub const sg_border_color = enum_sg_border_color;
pub const SG_VERTEXFORMAT_INVALID: c_int = 0;
pub const SG_VERTEXFORMAT_FLOAT: c_int = 1;
pub const SG_VERTEXFORMAT_FLOAT2: c_int = 2;
pub const SG_VERTEXFORMAT_FLOAT3: c_int = 3;
pub const SG_VERTEXFORMAT_FLOAT4: c_int = 4;
pub const SG_VERTEXFORMAT_BYTE4: c_int = 5;
pub const SG_VERTEXFORMAT_BYTE4N: c_int = 6;
pub const SG_VERTEXFORMAT_UBYTE4: c_int = 7;
pub const SG_VERTEXFORMAT_UBYTE4N: c_int = 8;
pub const SG_VERTEXFORMAT_SHORT2: c_int = 9;
pub const SG_VERTEXFORMAT_SHORT2N: c_int = 10;
pub const SG_VERTEXFORMAT_USHORT2N: c_int = 11;
pub const SG_VERTEXFORMAT_SHORT4: c_int = 12;
pub const SG_VERTEXFORMAT_SHORT4N: c_int = 13;
pub const SG_VERTEXFORMAT_USHORT4N: c_int = 14;
pub const SG_VERTEXFORMAT_UINT10_N2: c_int = 15;
pub const SG_VERTEXFORMAT_HALF2: c_int = 16;
pub const SG_VERTEXFORMAT_HALF4: c_int = 17;
pub const _SG_VERTEXFORMAT_NUM: c_int = 18;
pub const _SG_VERTEXFORMAT_FORCE_U32: c_int = 2147483647;
pub const enum_sg_vertex_format = c_uint;
pub const sg_vertex_format = enum_sg_vertex_format;
pub const _SG_VERTEXSTEP_DEFAULT: c_int = 0;
pub const SG_VERTEXSTEP_PER_VERTEX: c_int = 1;
pub const SG_VERTEXSTEP_PER_INSTANCE: c_int = 2;
pub const _SG_VERTEXSTEP_NUM: c_int = 3;
pub const _SG_VERTEXSTEP_FORCE_U32: c_int = 2147483647;
pub const enum_sg_vertex_step = c_uint;
pub const sg_vertex_step = enum_sg_vertex_step;
pub const SG_UNIFORMTYPE_INVALID: c_int = 0;
pub const SG_UNIFORMTYPE_FLOAT: c_int = 1;
pub const SG_UNIFORMTYPE_FLOAT2: c_int = 2;
pub const SG_UNIFORMTYPE_FLOAT3: c_int = 3;
pub const SG_UNIFORMTYPE_FLOAT4: c_int = 4;
pub const SG_UNIFORMTYPE_INT: c_int = 5;
pub const SG_UNIFORMTYPE_INT2: c_int = 6;
pub const SG_UNIFORMTYPE_INT3: c_int = 7;
pub const SG_UNIFORMTYPE_INT4: c_int = 8;
pub const SG_UNIFORMTYPE_MAT4: c_int = 9;
pub const _SG_UNIFORMTYPE_NUM: c_int = 10;
pub const _SG_UNIFORMTYPE_FORCE_U32: c_int = 2147483647;
pub const enum_sg_uniform_type = c_uint;
pub const sg_uniform_type = enum_sg_uniform_type;
pub const _SG_UNIFORMLAYOUT_DEFAULT: c_int = 0;
pub const SG_UNIFORMLAYOUT_NATIVE: c_int = 1;
pub const SG_UNIFORMLAYOUT_STD140: c_int = 2;
pub const _SG_UNIFORMLAYOUT_NUM: c_int = 3;
pub const _SG_UNIFORMLAYOUT_FORCE_U32: c_int = 2147483647;
pub const enum_sg_uniform_layout = c_uint;
pub const sg_uniform_layout = enum_sg_uniform_layout;
pub const _SG_CULLMODE_DEFAULT: c_int = 0;
pub const SG_CULLMODE_NONE: c_int = 1;
pub const SG_CULLMODE_FRONT: c_int = 2;
pub const SG_CULLMODE_BACK: c_int = 3;
pub const _SG_CULLMODE_NUM: c_int = 4;
pub const _SG_CULLMODE_FORCE_U32: c_int = 2147483647;
pub const enum_sg_cull_mode = c_uint;
pub const sg_cull_mode = enum_sg_cull_mode;
pub const _SG_FACEWINDING_DEFAULT: c_int = 0;
pub const SG_FACEWINDING_CCW: c_int = 1;
pub const SG_FACEWINDING_CW: c_int = 2;
pub const _SG_FACEWINDING_NUM: c_int = 3;
pub const _SG_FACEWINDING_FORCE_U32: c_int = 2147483647;
pub const enum_sg_face_winding = c_uint;
pub const sg_face_winding = enum_sg_face_winding;
pub const _SG_COMPAREFUNC_DEFAULT: c_int = 0;
pub const SG_COMPAREFUNC_NEVER: c_int = 1;
pub const SG_COMPAREFUNC_LESS: c_int = 2;
pub const SG_COMPAREFUNC_EQUAL: c_int = 3;
pub const SG_COMPAREFUNC_LESS_EQUAL: c_int = 4;
pub const SG_COMPAREFUNC_GREATER: c_int = 5;
pub const SG_COMPAREFUNC_NOT_EQUAL: c_int = 6;
pub const SG_COMPAREFUNC_GREATER_EQUAL: c_int = 7;
pub const SG_COMPAREFUNC_ALWAYS: c_int = 8;
pub const _SG_COMPAREFUNC_NUM: c_int = 9;
pub const _SG_COMPAREFUNC_FORCE_U32: c_int = 2147483647;
pub const enum_sg_compare_func = c_uint;
pub const sg_compare_func = enum_sg_compare_func;
pub const _SG_STENCILOP_DEFAULT: c_int = 0;
pub const SG_STENCILOP_KEEP: c_int = 1;
pub const SG_STENCILOP_ZERO: c_int = 2;
pub const SG_STENCILOP_REPLACE: c_int = 3;
pub const SG_STENCILOP_INCR_CLAMP: c_int = 4;
pub const SG_STENCILOP_DECR_CLAMP: c_int = 5;
pub const SG_STENCILOP_INVERT: c_int = 6;
pub const SG_STENCILOP_INCR_WRAP: c_int = 7;
pub const SG_STENCILOP_DECR_WRAP: c_int = 8;
pub const _SG_STENCILOP_NUM: c_int = 9;
pub const _SG_STENCILOP_FORCE_U32: c_int = 2147483647;
pub const enum_sg_stencil_op = c_uint;
pub const sg_stencil_op = enum_sg_stencil_op;
pub const _SG_BLENDFACTOR_DEFAULT: c_int = 0;
pub const SG_BLENDFACTOR_ZERO: c_int = 1;
pub const SG_BLENDFACTOR_ONE: c_int = 2;
pub const SG_BLENDFACTOR_SRC_COLOR: c_int = 3;
pub const SG_BLENDFACTOR_ONE_MINUS_SRC_COLOR: c_int = 4;
pub const SG_BLENDFACTOR_SRC_ALPHA: c_int = 5;
pub const SG_BLENDFACTOR_ONE_MINUS_SRC_ALPHA: c_int = 6;
pub const SG_BLENDFACTOR_DST_COLOR: c_int = 7;
pub const SG_BLENDFACTOR_ONE_MINUS_DST_COLOR: c_int = 8;
pub const SG_BLENDFACTOR_DST_ALPHA: c_int = 9;
pub const SG_BLENDFACTOR_ONE_MINUS_DST_ALPHA: c_int = 10;
pub const SG_BLENDFACTOR_SRC_ALPHA_SATURATED: c_int = 11;
pub const SG_BLENDFACTOR_BLEND_COLOR: c_int = 12;
pub const SG_BLENDFACTOR_ONE_MINUS_BLEND_COLOR: c_int = 13;
pub const SG_BLENDFACTOR_BLEND_ALPHA: c_int = 14;
pub const SG_BLENDFACTOR_ONE_MINUS_BLEND_ALPHA: c_int = 15;
pub const _SG_BLENDFACTOR_NUM: c_int = 16;
pub const _SG_BLENDFACTOR_FORCE_U32: c_int = 2147483647;
pub const enum_sg_blend_factor = c_uint;
pub const sg_blend_factor = enum_sg_blend_factor;
pub const _SG_BLENDOP_DEFAULT: c_int = 0;
pub const SG_BLENDOP_ADD: c_int = 1;
pub const SG_BLENDOP_SUBTRACT: c_int = 2;
pub const SG_BLENDOP_REVERSE_SUBTRACT: c_int = 3;
pub const _SG_BLENDOP_NUM: c_int = 4;
pub const _SG_BLENDOP_FORCE_U32: c_int = 2147483647;
pub const enum_sg_blend_op = c_uint;
pub const sg_blend_op = enum_sg_blend_op;
pub const _SG_COLORMASK_DEFAULT: c_int = 0;
pub const SG_COLORMASK_NONE: c_int = 16;
pub const SG_COLORMASK_R: c_int = 1;
pub const SG_COLORMASK_G: c_int = 2;
pub const SG_COLORMASK_RG: c_int = 3;
pub const SG_COLORMASK_B: c_int = 4;
pub const SG_COLORMASK_RB: c_int = 5;
pub const SG_COLORMASK_GB: c_int = 6;
pub const SG_COLORMASK_RGB: c_int = 7;
pub const SG_COLORMASK_A: c_int = 8;
pub const SG_COLORMASK_RA: c_int = 9;
pub const SG_COLORMASK_GA: c_int = 10;
pub const SG_COLORMASK_RGA: c_int = 11;
pub const SG_COLORMASK_BA: c_int = 12;
pub const SG_COLORMASK_RBA: c_int = 13;
pub const SG_COLORMASK_GBA: c_int = 14;
pub const SG_COLORMASK_RGBA: c_int = 15;
pub const _SG_COLORMASK_FORCE_U32: c_int = 2147483647;
pub const enum_sg_color_mask = c_uint;
pub const sg_color_mask = enum_sg_color_mask;
pub const _SG_LOADACTION_DEFAULT: c_int = 0;
pub const SG_LOADACTION_CLEAR: c_int = 1;
pub const SG_LOADACTION_LOAD: c_int = 2;
pub const SG_LOADACTION_DONTCARE: c_int = 3;
pub const _SG_LOADACTION_FORCE_U32: c_int = 2147483647;
pub const enum_sg_load_action = c_uint;
pub const sg_load_action = enum_sg_load_action;
pub const _SG_STOREACTION_DEFAULT: c_int = 0;
pub const SG_STOREACTION_STORE: c_int = 1;
pub const SG_STOREACTION_DONTCARE: c_int = 2;
pub const _SG_STOREACTION_FORCE_U32: c_int = 2147483647;
pub const enum_sg_store_action = c_uint;
pub const sg_store_action = enum_sg_store_action;
pub const struct_sg_color_attachment_action = extern struct {
    load_action: sg_load_action = @import("std").mem.zeroes(sg_load_action),
    store_action: sg_store_action = @import("std").mem.zeroes(sg_store_action),
    clear_value: sg_color = @import("std").mem.zeroes(sg_color),
};
pub const sg_color_attachment_action = struct_sg_color_attachment_action;
pub const struct_sg_depth_attachment_action = extern struct {
    load_action: sg_load_action = @import("std").mem.zeroes(sg_load_action),
    store_action: sg_store_action = @import("std").mem.zeroes(sg_store_action),
    clear_value: f32 = @import("std").mem.zeroes(f32),
};
pub const sg_depth_attachment_action = struct_sg_depth_attachment_action;
pub const struct_sg_stencil_attachment_action = extern struct {
    load_action: sg_load_action = @import("std").mem.zeroes(sg_load_action),
    store_action: sg_store_action = @import("std").mem.zeroes(sg_store_action),
    clear_value: u8 = @import("std").mem.zeroes(u8),
};
pub const sg_stencil_attachment_action = struct_sg_stencil_attachment_action;
pub const struct_sg_pass_action = extern struct {
    colors: [4]sg_color_attachment_action = @import("std").mem.zeroes([4]sg_color_attachment_action),
    depth: sg_depth_attachment_action = @import("std").mem.zeroes(sg_depth_attachment_action),
    stencil: sg_stencil_attachment_action = @import("std").mem.zeroes(sg_stencil_attachment_action),
};
pub const sg_pass_action = struct_sg_pass_action;
pub const struct_sg_metal_swapchain = extern struct {
    current_drawable: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    depth_stencil_texture: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    msaa_color_texture: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
};
pub const sg_metal_swapchain = struct_sg_metal_swapchain;
pub const struct_sg_d3d11_swapchain = extern struct {
    render_view: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    resolve_view: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    depth_stencil_view: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
};
pub const sg_d3d11_swapchain = struct_sg_d3d11_swapchain;
pub const struct_sg_wgpu_swapchain = extern struct {
    render_view: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    resolve_view: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    depth_stencil_view: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
};
pub const sg_wgpu_swapchain = struct_sg_wgpu_swapchain;
pub const struct_sg_gl_swapchain = extern struct {
    framebuffer: u32 = @import("std").mem.zeroes(u32),
};
pub const sg_gl_swapchain = struct_sg_gl_swapchain;
pub const struct_sg_swapchain = extern struct {
    width: c_int = @import("std").mem.zeroes(c_int),
    height: c_int = @import("std").mem.zeroes(c_int),
    sample_count: c_int = @import("std").mem.zeroes(c_int),
    color_format: sg_pixel_format = @import("std").mem.zeroes(sg_pixel_format),
    depth_format: sg_pixel_format = @import("std").mem.zeroes(sg_pixel_format),
    metal: sg_metal_swapchain = @import("std").mem.zeroes(sg_metal_swapchain),
    d3d11: sg_d3d11_swapchain = @import("std").mem.zeroes(sg_d3d11_swapchain),
    wgpu: sg_wgpu_swapchain = @import("std").mem.zeroes(sg_wgpu_swapchain),
    gl: sg_gl_swapchain = @import("std").mem.zeroes(sg_gl_swapchain),
};
pub const sg_swapchain = struct_sg_swapchain;
pub const struct_sg_pass = extern struct {
    _start_canary: u32 = @import("std").mem.zeroes(u32),
    action: sg_pass_action = @import("std").mem.zeroes(sg_pass_action),
    attachments: sg_attachments = @import("std").mem.zeroes(sg_attachments),
    swapchain: sg_swapchain = @import("std").mem.zeroes(sg_swapchain),
    label: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    _end_canary: u32 = @import("std").mem.zeroes(u32),
};
pub const sg_pass = struct_sg_pass;
pub const struct_sg_stage_bindings = extern struct {
    images: [12]sg_image = @import("std").mem.zeroes([12]sg_image),
    samplers: [8]sg_sampler = @import("std").mem.zeroes([8]sg_sampler),
    storage_buffers: [8]sg_buffer = @import("std").mem.zeroes([8]sg_buffer),
};
pub const sg_stage_bindings = struct_sg_stage_bindings;
pub const struct_sg_bindings = extern struct {
    _start_canary: u32 = @import("std").mem.zeroes(u32),
    vertex_buffers: [8]sg_buffer = @import("std").mem.zeroes([8]sg_buffer),
    vertex_buffer_offsets: [8]c_int = @import("std").mem.zeroes([8]c_int),
    index_buffer: sg_buffer = @import("std").mem.zeroes(sg_buffer),
    index_buffer_offset: c_int = @import("std").mem.zeroes(c_int),
    vs: sg_stage_bindings = @import("std").mem.zeroes(sg_stage_bindings),
    fs: sg_stage_bindings = @import("std").mem.zeroes(sg_stage_bindings),
    _end_canary: u32 = @import("std").mem.zeroes(u32),
};
pub const sg_bindings = struct_sg_bindings;
pub const struct_sg_buffer_desc = extern struct {
    _start_canary: u32 = @import("std").mem.zeroes(u32),
    size: usize = @import("std").mem.zeroes(usize),
    type: sg_buffer_type = @import("std").mem.zeroes(sg_buffer_type),
    usage: sg_usage = @import("std").mem.zeroes(sg_usage),
    data: sg_range = @import("std").mem.zeroes(sg_range),
    label: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    gl_buffers: [2]u32 = @import("std").mem.zeroes([2]u32),
    mtl_buffers: [2]?*const anyopaque = @import("std").mem.zeroes([2]?*const anyopaque),
    d3d11_buffer: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    wgpu_buffer: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    _end_canary: u32 = @import("std").mem.zeroes(u32),
};
pub const sg_buffer_desc = struct_sg_buffer_desc;
pub const struct_sg_image_data = extern struct {
    subimage: [6][16]sg_range = @import("std").mem.zeroes([6][16]sg_range),
};
pub const sg_image_data = struct_sg_image_data;
pub const struct_sg_image_desc = extern struct {
    _start_canary: u32 = @import("std").mem.zeroes(u32),
    type: sg_image_type = @import("std").mem.zeroes(sg_image_type),
    render_target: bool = @import("std").mem.zeroes(bool),
    width: c_int = @import("std").mem.zeroes(c_int),
    height: c_int = @import("std").mem.zeroes(c_int),
    num_slices: c_int = @import("std").mem.zeroes(c_int),
    num_mipmaps: c_int = @import("std").mem.zeroes(c_int),
    usage: sg_usage = @import("std").mem.zeroes(sg_usage),
    pixel_format: sg_pixel_format = @import("std").mem.zeroes(sg_pixel_format),
    sample_count: c_int = @import("std").mem.zeroes(c_int),
    data: sg_image_data = @import("std").mem.zeroes(sg_image_data),
    label: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    gl_textures: [2]u32 = @import("std").mem.zeroes([2]u32),
    gl_texture_target: u32 = @import("std").mem.zeroes(u32),
    mtl_textures: [2]?*const anyopaque = @import("std").mem.zeroes([2]?*const anyopaque),
    d3d11_texture: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    d3d11_shader_resource_view: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    wgpu_texture: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    wgpu_texture_view: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    _end_canary: u32 = @import("std").mem.zeroes(u32),
};
pub const sg_image_desc = struct_sg_image_desc;
pub const struct_sg_sampler_desc = extern struct {
    _start_canary: u32 = @import("std").mem.zeroes(u32),
    min_filter: sg_filter = @import("std").mem.zeroes(sg_filter),
    mag_filter: sg_filter = @import("std").mem.zeroes(sg_filter),
    mipmap_filter: sg_filter = @import("std").mem.zeroes(sg_filter),
    wrap_u: sg_wrap = @import("std").mem.zeroes(sg_wrap),
    wrap_v: sg_wrap = @import("std").mem.zeroes(sg_wrap),
    wrap_w: sg_wrap = @import("std").mem.zeroes(sg_wrap),
    min_lod: f32 = @import("std").mem.zeroes(f32),
    max_lod: f32 = @import("std").mem.zeroes(f32),
    border_color: sg_border_color = @import("std").mem.zeroes(sg_border_color),
    compare: sg_compare_func = @import("std").mem.zeroes(sg_compare_func),
    max_anisotropy: u32 = @import("std").mem.zeroes(u32),
    label: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    gl_sampler: u32 = @import("std").mem.zeroes(u32),
    mtl_sampler: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    d3d11_sampler: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    wgpu_sampler: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    _end_canary: u32 = @import("std").mem.zeroes(u32),
};
pub const sg_sampler_desc = struct_sg_sampler_desc;
pub const struct_sg_shader_attr_desc = extern struct {
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    sem_name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    sem_index: c_int = @import("std").mem.zeroes(c_int),
};
pub const sg_shader_attr_desc = struct_sg_shader_attr_desc;
pub const struct_sg_shader_uniform_desc = extern struct {
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    type: sg_uniform_type = @import("std").mem.zeroes(sg_uniform_type),
    array_count: c_int = @import("std").mem.zeroes(c_int),
};
pub const sg_shader_uniform_desc = struct_sg_shader_uniform_desc;
pub const struct_sg_shader_uniform_block_desc = extern struct {
    size: usize = @import("std").mem.zeroes(usize),
    layout: sg_uniform_layout = @import("std").mem.zeroes(sg_uniform_layout),
    uniforms: [16]sg_shader_uniform_desc = @import("std").mem.zeroes([16]sg_shader_uniform_desc),
};
pub const sg_shader_uniform_block_desc = struct_sg_shader_uniform_block_desc;
pub const struct_sg_shader_storage_buffer_desc = extern struct {
    used: bool = @import("std").mem.zeroes(bool),
    readonly: bool = @import("std").mem.zeroes(bool),
};
pub const sg_shader_storage_buffer_desc = struct_sg_shader_storage_buffer_desc;
pub const struct_sg_shader_image_desc = extern struct {
    used: bool = @import("std").mem.zeroes(bool),
    multisampled: bool = @import("std").mem.zeroes(bool),
    image_type: sg_image_type = @import("std").mem.zeroes(sg_image_type),
    sample_type: sg_image_sample_type = @import("std").mem.zeroes(sg_image_sample_type),
};
pub const sg_shader_image_desc = struct_sg_shader_image_desc;
pub const struct_sg_shader_sampler_desc = extern struct {
    used: bool = @import("std").mem.zeroes(bool),
    sampler_type: sg_sampler_type = @import("std").mem.zeroes(sg_sampler_type),
};
pub const sg_shader_sampler_desc = struct_sg_shader_sampler_desc;
pub const struct_sg_shader_image_sampler_pair_desc = extern struct {
    used: bool = @import("std").mem.zeroes(bool),
    image_slot: c_int = @import("std").mem.zeroes(c_int),
    sampler_slot: c_int = @import("std").mem.zeroes(c_int),
    glsl_name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
pub const sg_shader_image_sampler_pair_desc = struct_sg_shader_image_sampler_pair_desc;
pub const struct_sg_shader_stage_desc = extern struct {
    source: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    bytecode: sg_range = @import("std").mem.zeroes(sg_range),
    entry: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    d3d11_target: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    uniform_blocks: [4]sg_shader_uniform_block_desc = @import("std").mem.zeroes([4]sg_shader_uniform_block_desc),
    storage_buffers: [8]sg_shader_storage_buffer_desc = @import("std").mem.zeroes([8]sg_shader_storage_buffer_desc),
    images: [12]sg_shader_image_desc = @import("std").mem.zeroes([12]sg_shader_image_desc),
    samplers: [8]sg_shader_sampler_desc = @import("std").mem.zeroes([8]sg_shader_sampler_desc),
    image_sampler_pairs: [12]sg_shader_image_sampler_pair_desc = @import("std").mem.zeroes([12]sg_shader_image_sampler_pair_desc),
};
pub const sg_shader_stage_desc = struct_sg_shader_stage_desc;
pub const struct_sg_shader_desc = extern struct {
    _start_canary: u32 = @import("std").mem.zeroes(u32),
    attrs: [16]sg_shader_attr_desc = @import("std").mem.zeroes([16]sg_shader_attr_desc),
    vs: sg_shader_stage_desc = @import("std").mem.zeroes(sg_shader_stage_desc),
    fs: sg_shader_stage_desc = @import("std").mem.zeroes(sg_shader_stage_desc),
    label: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    _end_canary: u32 = @import("std").mem.zeroes(u32),
};
pub const sg_shader_desc = struct_sg_shader_desc;
pub const struct_sg_vertex_buffer_layout_state = extern struct {
    stride: c_int = @import("std").mem.zeroes(c_int),
    step_func: sg_vertex_step = @import("std").mem.zeroes(sg_vertex_step),
    step_rate: c_int = @import("std").mem.zeroes(c_int),
};
pub const sg_vertex_buffer_layout_state = struct_sg_vertex_buffer_layout_state;
pub const struct_sg_vertex_attr_state = extern struct {
    buffer_index: c_int = @import("std").mem.zeroes(c_int),
    offset: c_int = @import("std").mem.zeroes(c_int),
    format: sg_vertex_format = @import("std").mem.zeroes(sg_vertex_format),
};
pub const sg_vertex_attr_state = struct_sg_vertex_attr_state;
pub const struct_sg_vertex_layout_state = extern struct {
    buffers: [8]sg_vertex_buffer_layout_state = @import("std").mem.zeroes([8]sg_vertex_buffer_layout_state),
    attrs: [16]sg_vertex_attr_state = @import("std").mem.zeroes([16]sg_vertex_attr_state),
};
pub const sg_vertex_layout_state = struct_sg_vertex_layout_state;
pub const struct_sg_stencil_face_state = extern struct {
    compare: sg_compare_func = @import("std").mem.zeroes(sg_compare_func),
    fail_op: sg_stencil_op = @import("std").mem.zeroes(sg_stencil_op),
    depth_fail_op: sg_stencil_op = @import("std").mem.zeroes(sg_stencil_op),
    pass_op: sg_stencil_op = @import("std").mem.zeroes(sg_stencil_op),
};
pub const sg_stencil_face_state = struct_sg_stencil_face_state;
pub const struct_sg_stencil_state = extern struct {
    enabled: bool = @import("std").mem.zeroes(bool),
    front: sg_stencil_face_state = @import("std").mem.zeroes(sg_stencil_face_state),
    back: sg_stencil_face_state = @import("std").mem.zeroes(sg_stencil_face_state),
    read_mask: u8 = @import("std").mem.zeroes(u8),
    write_mask: u8 = @import("std").mem.zeroes(u8),
    ref: u8 = @import("std").mem.zeroes(u8),
};
pub const sg_stencil_state = struct_sg_stencil_state;
pub const struct_sg_depth_state = extern struct {
    pixel_format: sg_pixel_format = @import("std").mem.zeroes(sg_pixel_format),
    compare: sg_compare_func = @import("std").mem.zeroes(sg_compare_func),
    write_enabled: bool = @import("std").mem.zeroes(bool),
    bias: f32 = @import("std").mem.zeroes(f32),
    bias_slope_scale: f32 = @import("std").mem.zeroes(f32),
    bias_clamp: f32 = @import("std").mem.zeroes(f32),
};
pub const sg_depth_state = struct_sg_depth_state;
pub const struct_sg_blend_state = extern struct {
    enabled: bool = @import("std").mem.zeroes(bool),
    src_factor_rgb: sg_blend_factor = @import("std").mem.zeroes(sg_blend_factor),
    dst_factor_rgb: sg_blend_factor = @import("std").mem.zeroes(sg_blend_factor),
    op_rgb: sg_blend_op = @import("std").mem.zeroes(sg_blend_op),
    src_factor_alpha: sg_blend_factor = @import("std").mem.zeroes(sg_blend_factor),
    dst_factor_alpha: sg_blend_factor = @import("std").mem.zeroes(sg_blend_factor),
    op_alpha: sg_blend_op = @import("std").mem.zeroes(sg_blend_op),
};
pub const sg_blend_state = struct_sg_blend_state;
pub const struct_sg_color_target_state = extern struct {
    pixel_format: sg_pixel_format = @import("std").mem.zeroes(sg_pixel_format),
    write_mask: sg_color_mask = @import("std").mem.zeroes(sg_color_mask),
    blend: sg_blend_state = @import("std").mem.zeroes(sg_blend_state),
};
pub const sg_color_target_state = struct_sg_color_target_state;
pub const struct_sg_pipeline_desc = extern struct {
    _start_canary: u32 = @import("std").mem.zeroes(u32),
    shader: sg_shader = @import("std").mem.zeroes(sg_shader),
    layout: sg_vertex_layout_state = @import("std").mem.zeroes(sg_vertex_layout_state),
    depth: sg_depth_state = @import("std").mem.zeroes(sg_depth_state),
    stencil: sg_stencil_state = @import("std").mem.zeroes(sg_stencil_state),
    color_count: c_int = @import("std").mem.zeroes(c_int),
    colors: [4]sg_color_target_state = @import("std").mem.zeroes([4]sg_color_target_state),
    primitive_type: sg_primitive_type = @import("std").mem.zeroes(sg_primitive_type),
    index_type: sg_index_type = @import("std").mem.zeroes(sg_index_type),
    cull_mode: sg_cull_mode = @import("std").mem.zeroes(sg_cull_mode),
    face_winding: sg_face_winding = @import("std").mem.zeroes(sg_face_winding),
    sample_count: c_int = @import("std").mem.zeroes(c_int),
    blend_color: sg_color = @import("std").mem.zeroes(sg_color),
    alpha_to_coverage_enabled: bool = @import("std").mem.zeroes(bool),
    label: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    _end_canary: u32 = @import("std").mem.zeroes(u32),
};
pub const sg_pipeline_desc = struct_sg_pipeline_desc;
pub const struct_sg_attachment_desc = extern struct {
    image: sg_image = @import("std").mem.zeroes(sg_image),
    mip_level: c_int = @import("std").mem.zeroes(c_int),
    slice: c_int = @import("std").mem.zeroes(c_int),
};
pub const sg_attachment_desc = struct_sg_attachment_desc;
pub const struct_sg_attachments_desc = extern struct {
    _start_canary: u32 = @import("std").mem.zeroes(u32),
    colors: [4]sg_attachment_desc = @import("std").mem.zeroes([4]sg_attachment_desc),
    resolves: [4]sg_attachment_desc = @import("std").mem.zeroes([4]sg_attachment_desc),
    depth_stencil: sg_attachment_desc = @import("std").mem.zeroes(sg_attachment_desc),
    label: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    _end_canary: u32 = @import("std").mem.zeroes(u32),
};
pub const sg_attachments_desc = struct_sg_attachments_desc;
pub const struct_sg_trace_hooks = extern struct {
    user_data: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    reset_state_cache: ?*const fn (?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.c) void),
    make_buffer: ?*const fn ([*c]const sg_buffer_desc, sg_buffer, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]const sg_buffer_desc, sg_buffer, ?*anyopaque) callconv(.c) void),
    make_image: ?*const fn ([*c]const sg_image_desc, sg_image, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]const sg_image_desc, sg_image, ?*anyopaque) callconv(.c) void),
    make_sampler: ?*const fn ([*c]const sg_sampler_desc, sg_sampler, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]const sg_sampler_desc, sg_sampler, ?*anyopaque) callconv(.c) void),
    make_shader: ?*const fn ([*c]const sg_shader_desc, sg_shader, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]const sg_shader_desc, sg_shader, ?*anyopaque) callconv(.c) void),
    make_pipeline: ?*const fn ([*c]const sg_pipeline_desc, sg_pipeline, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]const sg_pipeline_desc, sg_pipeline, ?*anyopaque) callconv(.c) void),
    make_attachments: ?*const fn ([*c]const sg_attachments_desc, sg_attachments, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]const sg_attachments_desc, sg_attachments, ?*anyopaque) callconv(.c) void),
    destroy_buffer: ?*const fn (sg_buffer, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_buffer, ?*anyopaque) callconv(.c) void),
    destroy_image: ?*const fn (sg_image, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_image, ?*anyopaque) callconv(.c) void),
    destroy_sampler: ?*const fn (sg_sampler, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_sampler, ?*anyopaque) callconv(.c) void),
    destroy_shader: ?*const fn (sg_shader, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_shader, ?*anyopaque) callconv(.c) void),
    destroy_pipeline: ?*const fn (sg_pipeline, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_pipeline, ?*anyopaque) callconv(.c) void),
    destroy_attachments: ?*const fn (sg_attachments, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_attachments, ?*anyopaque) callconv(.c) void),
    update_buffer: ?*const fn (sg_buffer, [*c]const sg_range, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_buffer, [*c]const sg_range, ?*anyopaque) callconv(.c) void),
    update_image: ?*const fn (sg_image, [*c]const sg_image_data, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_image, [*c]const sg_image_data, ?*anyopaque) callconv(.c) void),
    append_buffer: ?*const fn (sg_buffer, [*c]const sg_range, c_int, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_buffer, [*c]const sg_range, c_int, ?*anyopaque) callconv(.c) void),
    begin_pass: ?*const fn ([*c]const sg_pass, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]const sg_pass, ?*anyopaque) callconv(.c) void),
    apply_viewport: ?*const fn (c_int, c_int, c_int, c_int, bool, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (c_int, c_int, c_int, c_int, bool, ?*anyopaque) callconv(.c) void),
    apply_scissor_rect: ?*const fn (c_int, c_int, c_int, c_int, bool, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (c_int, c_int, c_int, c_int, bool, ?*anyopaque) callconv(.c) void),
    apply_pipeline: ?*const fn (sg_pipeline, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_pipeline, ?*anyopaque) callconv(.c) void),
    apply_bindings: ?*const fn ([*c]const sg_bindings, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]const sg_bindings, ?*anyopaque) callconv(.c) void),
    apply_uniforms: ?*const fn (sg_shader_stage, c_int, [*c]const sg_range, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_shader_stage, c_int, [*c]const sg_range, ?*anyopaque) callconv(.c) void),
    draw: ?*const fn (c_int, c_int, c_int, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (c_int, c_int, c_int, ?*anyopaque) callconv(.c) void),
    end_pass: ?*const fn (?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.c) void),
    commit: ?*const fn (?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.c) void),
    alloc_buffer: ?*const fn (sg_buffer, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_buffer, ?*anyopaque) callconv(.c) void),
    alloc_image: ?*const fn (sg_image, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_image, ?*anyopaque) callconv(.c) void),
    alloc_sampler: ?*const fn (sg_sampler, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_sampler, ?*anyopaque) callconv(.c) void),
    alloc_shader: ?*const fn (sg_shader, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_shader, ?*anyopaque) callconv(.c) void),
    alloc_pipeline: ?*const fn (sg_pipeline, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_pipeline, ?*anyopaque) callconv(.c) void),
    alloc_attachments: ?*const fn (sg_attachments, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_attachments, ?*anyopaque) callconv(.c) void),
    dealloc_buffer: ?*const fn (sg_buffer, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_buffer, ?*anyopaque) callconv(.c) void),
    dealloc_image: ?*const fn (sg_image, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_image, ?*anyopaque) callconv(.c) void),
    dealloc_sampler: ?*const fn (sg_sampler, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_sampler, ?*anyopaque) callconv(.c) void),
    dealloc_shader: ?*const fn (sg_shader, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_shader, ?*anyopaque) callconv(.c) void),
    dealloc_pipeline: ?*const fn (sg_pipeline, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_pipeline, ?*anyopaque) callconv(.c) void),
    dealloc_attachments: ?*const fn (sg_attachments, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_attachments, ?*anyopaque) callconv(.c) void),
    init_buffer: ?*const fn (sg_buffer, [*c]const sg_buffer_desc, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_buffer, [*c]const sg_buffer_desc, ?*anyopaque) callconv(.c) void),
    init_image: ?*const fn (sg_image, [*c]const sg_image_desc, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_image, [*c]const sg_image_desc, ?*anyopaque) callconv(.c) void),
    init_sampler: ?*const fn (sg_sampler, [*c]const sg_sampler_desc, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_sampler, [*c]const sg_sampler_desc, ?*anyopaque) callconv(.c) void),
    init_shader: ?*const fn (sg_shader, [*c]const sg_shader_desc, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_shader, [*c]const sg_shader_desc, ?*anyopaque) callconv(.c) void),
    init_pipeline: ?*const fn (sg_pipeline, [*c]const sg_pipeline_desc, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_pipeline, [*c]const sg_pipeline_desc, ?*anyopaque) callconv(.c) void),
    init_attachments: ?*const fn (sg_attachments, [*c]const sg_attachments_desc, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_attachments, [*c]const sg_attachments_desc, ?*anyopaque) callconv(.c) void),
    uninit_buffer: ?*const fn (sg_buffer, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_buffer, ?*anyopaque) callconv(.c) void),
    uninit_image: ?*const fn (sg_image, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_image, ?*anyopaque) callconv(.c) void),
    uninit_sampler: ?*const fn (sg_sampler, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_sampler, ?*anyopaque) callconv(.c) void),
    uninit_shader: ?*const fn (sg_shader, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_shader, ?*anyopaque) callconv(.c) void),
    uninit_pipeline: ?*const fn (sg_pipeline, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_pipeline, ?*anyopaque) callconv(.c) void),
    uninit_attachments: ?*const fn (sg_attachments, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_attachments, ?*anyopaque) callconv(.c) void),
    fail_buffer: ?*const fn (sg_buffer, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_buffer, ?*anyopaque) callconv(.c) void),
    fail_image: ?*const fn (sg_image, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_image, ?*anyopaque) callconv(.c) void),
    fail_sampler: ?*const fn (sg_sampler, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_sampler, ?*anyopaque) callconv(.c) void),
    fail_shader: ?*const fn (sg_shader, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_shader, ?*anyopaque) callconv(.c) void),
    fail_pipeline: ?*const fn (sg_pipeline, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_pipeline, ?*anyopaque) callconv(.c) void),
    fail_attachments: ?*const fn (sg_attachments, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (sg_attachments, ?*anyopaque) callconv(.c) void),
    push_debug_group: ?*const fn ([*c]const u8, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]const u8, ?*anyopaque) callconv(.c) void),
    pop_debug_group: ?*const fn (?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.c) void),
};
pub const sg_trace_hooks = struct_sg_trace_hooks;
pub const struct_sg_slot_info = extern struct {
    state: sg_resource_state = @import("std").mem.zeroes(sg_resource_state),
    res_id: u32 = @import("std").mem.zeroes(u32),
};
pub const sg_slot_info = struct_sg_slot_info;
pub const struct_sg_buffer_info = extern struct {
    slot: sg_slot_info = @import("std").mem.zeroes(sg_slot_info),
    update_frame_index: u32 = @import("std").mem.zeroes(u32),
    append_frame_index: u32 = @import("std").mem.zeroes(u32),
    append_pos: c_int = @import("std").mem.zeroes(c_int),
    append_overflow: bool = @import("std").mem.zeroes(bool),
    num_slots: c_int = @import("std").mem.zeroes(c_int),
    active_slot: c_int = @import("std").mem.zeroes(c_int),
};
pub const sg_buffer_info = struct_sg_buffer_info;
pub const struct_sg_image_info = extern struct {
    slot: sg_slot_info = @import("std").mem.zeroes(sg_slot_info),
    upd_frame_index: u32 = @import("std").mem.zeroes(u32),
    num_slots: c_int = @import("std").mem.zeroes(c_int),
    active_slot: c_int = @import("std").mem.zeroes(c_int),
};
pub const sg_image_info = struct_sg_image_info;
pub const struct_sg_sampler_info = extern struct {
    slot: sg_slot_info = @import("std").mem.zeroes(sg_slot_info),
};
pub const sg_sampler_info = struct_sg_sampler_info;
pub const struct_sg_shader_info = extern struct {
    slot: sg_slot_info = @import("std").mem.zeroes(sg_slot_info),
};
pub const sg_shader_info = struct_sg_shader_info;
pub const struct_sg_pipeline_info = extern struct {
    slot: sg_slot_info = @import("std").mem.zeroes(sg_slot_info),
};
pub const sg_pipeline_info = struct_sg_pipeline_info;
pub const struct_sg_attachments_info = extern struct {
    slot: sg_slot_info = @import("std").mem.zeroes(sg_slot_info),
};
pub const sg_attachments_info = struct_sg_attachments_info;
pub const struct_sg_frame_stats_gl = extern struct {
    num_bind_buffer: u32 = @import("std").mem.zeroes(u32),
    num_active_texture: u32 = @import("std").mem.zeroes(u32),
    num_bind_texture: u32 = @import("std").mem.zeroes(u32),
    num_bind_sampler: u32 = @import("std").mem.zeroes(u32),
    num_use_program: u32 = @import("std").mem.zeroes(u32),
    num_render_state: u32 = @import("std").mem.zeroes(u32),
    num_vertex_attrib_pointer: u32 = @import("std").mem.zeroes(u32),
    num_vertex_attrib_divisor: u32 = @import("std").mem.zeroes(u32),
    num_enable_vertex_attrib_array: u32 = @import("std").mem.zeroes(u32),
    num_disable_vertex_attrib_array: u32 = @import("std").mem.zeroes(u32),
    num_uniform: u32 = @import("std").mem.zeroes(u32),
};
pub const sg_frame_stats_gl = struct_sg_frame_stats_gl;
pub const struct_sg_frame_stats_d3d11_pass = extern struct {
    num_om_set_render_targets: u32 = @import("std").mem.zeroes(u32),
    num_clear_render_target_view: u32 = @import("std").mem.zeroes(u32),
    num_clear_depth_stencil_view: u32 = @import("std").mem.zeroes(u32),
    num_resolve_subresource: u32 = @import("std").mem.zeroes(u32),
};
pub const sg_frame_stats_d3d11_pass = struct_sg_frame_stats_d3d11_pass;
pub const struct_sg_frame_stats_d3d11_pipeline = extern struct {
    num_rs_set_state: u32 = @import("std").mem.zeroes(u32),
    num_om_set_depth_stencil_state: u32 = @import("std").mem.zeroes(u32),
    num_om_set_blend_state: u32 = @import("std").mem.zeroes(u32),
    num_ia_set_primitive_topology: u32 = @import("std").mem.zeroes(u32),
    num_ia_set_input_layout: u32 = @import("std").mem.zeroes(u32),
    num_vs_set_shader: u32 = @import("std").mem.zeroes(u32),
    num_vs_set_constant_buffers: u32 = @import("std").mem.zeroes(u32),
    num_ps_set_shader: u32 = @import("std").mem.zeroes(u32),
    num_ps_set_constant_buffers: u32 = @import("std").mem.zeroes(u32),
};
pub const sg_frame_stats_d3d11_pipeline = struct_sg_frame_stats_d3d11_pipeline;
pub const struct_sg_frame_stats_d3d11_bindings = extern struct {
    num_ia_set_vertex_buffers: u32 = @import("std").mem.zeroes(u32),
    num_ia_set_index_buffer: u32 = @import("std").mem.zeroes(u32),
    num_vs_set_shader_resources: u32 = @import("std").mem.zeroes(u32),
    num_ps_set_shader_resources: u32 = @import("std").mem.zeroes(u32),
    num_vs_set_samplers: u32 = @import("std").mem.zeroes(u32),
    num_ps_set_samplers: u32 = @import("std").mem.zeroes(u32),
};
pub const sg_frame_stats_d3d11_bindings = struct_sg_frame_stats_d3d11_bindings;
pub const struct_sg_frame_stats_d3d11_uniforms = extern struct {
    num_update_subresource: u32 = @import("std").mem.zeroes(u32),
};
pub const sg_frame_stats_d3d11_uniforms = struct_sg_frame_stats_d3d11_uniforms;
pub const struct_sg_frame_stats_d3d11_draw = extern struct {
    num_draw_indexed_instanced: u32 = @import("std").mem.zeroes(u32),
    num_draw_indexed: u32 = @import("std").mem.zeroes(u32),
    num_draw_instanced: u32 = @import("std").mem.zeroes(u32),
    num_draw: u32 = @import("std").mem.zeroes(u32),
};
pub const sg_frame_stats_d3d11_draw = struct_sg_frame_stats_d3d11_draw;
pub const struct_sg_frame_stats_d3d11 = extern struct {
    pass: sg_frame_stats_d3d11_pass = @import("std").mem.zeroes(sg_frame_stats_d3d11_pass),
    pipeline: sg_frame_stats_d3d11_pipeline = @import("std").mem.zeroes(sg_frame_stats_d3d11_pipeline),
    bindings: sg_frame_stats_d3d11_bindings = @import("std").mem.zeroes(sg_frame_stats_d3d11_bindings),
    uniforms: sg_frame_stats_d3d11_uniforms = @import("std").mem.zeroes(sg_frame_stats_d3d11_uniforms),
    draw: sg_frame_stats_d3d11_draw = @import("std").mem.zeroes(sg_frame_stats_d3d11_draw),
    num_map: u32 = @import("std").mem.zeroes(u32),
    num_unmap: u32 = @import("std").mem.zeroes(u32),
};
pub const sg_frame_stats_d3d11 = struct_sg_frame_stats_d3d11;
pub const struct_sg_frame_stats_metal_idpool = extern struct {
    num_added: u32 = @import("std").mem.zeroes(u32),
    num_released: u32 = @import("std").mem.zeroes(u32),
    num_garbage_collected: u32 = @import("std").mem.zeroes(u32),
};
pub const sg_frame_stats_metal_idpool = struct_sg_frame_stats_metal_idpool;
pub const struct_sg_frame_stats_metal_pipeline = extern struct {
    num_set_blend_color: u32 = @import("std").mem.zeroes(u32),
    num_set_cull_mode: u32 = @import("std").mem.zeroes(u32),
    num_set_front_facing_winding: u32 = @import("std").mem.zeroes(u32),
    num_set_stencil_reference_value: u32 = @import("std").mem.zeroes(u32),
    num_set_depth_bias: u32 = @import("std").mem.zeroes(u32),
    num_set_render_pipeline_state: u32 = @import("std").mem.zeroes(u32),
    num_set_depth_stencil_state: u32 = @import("std").mem.zeroes(u32),
};
pub const sg_frame_stats_metal_pipeline = struct_sg_frame_stats_metal_pipeline;
pub const struct_sg_frame_stats_metal_bindings = extern struct {
    num_set_vertex_buffer: u32 = @import("std").mem.zeroes(u32),
    num_set_vertex_texture: u32 = @import("std").mem.zeroes(u32),
    num_set_vertex_sampler_state: u32 = @import("std").mem.zeroes(u32),
    num_set_fragment_buffer: u32 = @import("std").mem.zeroes(u32),
    num_set_fragment_texture: u32 = @import("std").mem.zeroes(u32),
    num_set_fragment_sampler_state: u32 = @import("std").mem.zeroes(u32),
};
pub const sg_frame_stats_metal_bindings = struct_sg_frame_stats_metal_bindings;
pub const struct_sg_frame_stats_metal_uniforms = extern struct {
    num_set_vertex_buffer_offset: u32 = @import("std").mem.zeroes(u32),
    num_set_fragment_buffer_offset: u32 = @import("std").mem.zeroes(u32),
};
pub const sg_frame_stats_metal_uniforms = struct_sg_frame_stats_metal_uniforms;
pub const struct_sg_frame_stats_metal = extern struct {
    idpool: sg_frame_stats_metal_idpool = @import("std").mem.zeroes(sg_frame_stats_metal_idpool),
    pipeline: sg_frame_stats_metal_pipeline = @import("std").mem.zeroes(sg_frame_stats_metal_pipeline),
    bindings: sg_frame_stats_metal_bindings = @import("std").mem.zeroes(sg_frame_stats_metal_bindings),
    uniforms: sg_frame_stats_metal_uniforms = @import("std").mem.zeroes(sg_frame_stats_metal_uniforms),
};
pub const sg_frame_stats_metal = struct_sg_frame_stats_metal;
pub const struct_sg_frame_stats_wgpu_uniforms = extern struct {
    num_set_bindgroup: u32 = @import("std").mem.zeroes(u32),
    size_write_buffer: u32 = @import("std").mem.zeroes(u32),
};
pub const sg_frame_stats_wgpu_uniforms = struct_sg_frame_stats_wgpu_uniforms;
pub const struct_sg_frame_stats_wgpu_bindings = extern struct {
    num_set_vertex_buffer: u32 = @import("std").mem.zeroes(u32),
    num_skip_redundant_vertex_buffer: u32 = @import("std").mem.zeroes(u32),
    num_set_index_buffer: u32 = @import("std").mem.zeroes(u32),
    num_skip_redundant_index_buffer: u32 = @import("std").mem.zeroes(u32),
    num_create_bindgroup: u32 = @import("std").mem.zeroes(u32),
    num_discard_bindgroup: u32 = @import("std").mem.zeroes(u32),
    num_set_bindgroup: u32 = @import("std").mem.zeroes(u32),
    num_skip_redundant_bindgroup: u32 = @import("std").mem.zeroes(u32),
    num_bindgroup_cache_hits: u32 = @import("std").mem.zeroes(u32),
    num_bindgroup_cache_misses: u32 = @import("std").mem.zeroes(u32),
    num_bindgroup_cache_collisions: u32 = @import("std").mem.zeroes(u32),
    num_bindgroup_cache_hash_vs_key_mismatch: u32 = @import("std").mem.zeroes(u32),
};
pub const sg_frame_stats_wgpu_bindings = struct_sg_frame_stats_wgpu_bindings;
pub const struct_sg_frame_stats_wgpu = extern struct {
    uniforms: sg_frame_stats_wgpu_uniforms = @import("std").mem.zeroes(sg_frame_stats_wgpu_uniforms),
    bindings: sg_frame_stats_wgpu_bindings = @import("std").mem.zeroes(sg_frame_stats_wgpu_bindings),
};
pub const sg_frame_stats_wgpu = struct_sg_frame_stats_wgpu;
pub const struct_sg_frame_stats = extern struct {
    frame_index: u32 = @import("std").mem.zeroes(u32),
    num_passes: u32 = @import("std").mem.zeroes(u32),
    num_apply_viewport: u32 = @import("std").mem.zeroes(u32),
    num_apply_scissor_rect: u32 = @import("std").mem.zeroes(u32),
    num_apply_pipeline: u32 = @import("std").mem.zeroes(u32),
    num_apply_bindings: u32 = @import("std").mem.zeroes(u32),
    num_apply_uniforms: u32 = @import("std").mem.zeroes(u32),
    num_draw: u32 = @import("std").mem.zeroes(u32),
    num_update_buffer: u32 = @import("std").mem.zeroes(u32),
    num_append_buffer: u32 = @import("std").mem.zeroes(u32),
    num_update_image: u32 = @import("std").mem.zeroes(u32),
    size_apply_uniforms: u32 = @import("std").mem.zeroes(u32),
    size_update_buffer: u32 = @import("std").mem.zeroes(u32),
    size_append_buffer: u32 = @import("std").mem.zeroes(u32),
    size_update_image: u32 = @import("std").mem.zeroes(u32),
    gl: sg_frame_stats_gl = @import("std").mem.zeroes(sg_frame_stats_gl),
    d3d11: sg_frame_stats_d3d11 = @import("std").mem.zeroes(sg_frame_stats_d3d11),
    metal: sg_frame_stats_metal = @import("std").mem.zeroes(sg_frame_stats_metal),
    wgpu: sg_frame_stats_wgpu = @import("std").mem.zeroes(sg_frame_stats_wgpu),
};
pub const sg_frame_stats = struct_sg_frame_stats;
pub const SG_LOGITEM_OK: c_int = 0;
pub const SG_LOGITEM_MALLOC_FAILED: c_int = 1;
pub const SG_LOGITEM_GL_TEXTURE_FORMAT_NOT_SUPPORTED: c_int = 2;
pub const SG_LOGITEM_GL_3D_TEXTURES_NOT_SUPPORTED: c_int = 3;
pub const SG_LOGITEM_GL_ARRAY_TEXTURES_NOT_SUPPORTED: c_int = 4;
pub const SG_LOGITEM_GL_SHADER_COMPILATION_FAILED: c_int = 5;
pub const SG_LOGITEM_GL_SHADER_LINKING_FAILED: c_int = 6;
pub const SG_LOGITEM_GL_VERTEX_ATTRIBUTE_NOT_FOUND_IN_SHADER: c_int = 7;
pub const SG_LOGITEM_GL_TEXTURE_NAME_NOT_FOUND_IN_SHADER: c_int = 8;
pub const SG_LOGITEM_GL_FRAMEBUFFER_STATUS_UNDEFINED: c_int = 9;
pub const SG_LOGITEM_GL_FRAMEBUFFER_STATUS_INCOMPLETE_ATTACHMENT: c_int = 10;
pub const SG_LOGITEM_GL_FRAMEBUFFER_STATUS_INCOMPLETE_MISSING_ATTACHMENT: c_int = 11;
pub const SG_LOGITEM_GL_FRAMEBUFFER_STATUS_UNSUPPORTED: c_int = 12;
pub const SG_LOGITEM_GL_FRAMEBUFFER_STATUS_INCOMPLETE_MULTISAMPLE: c_int = 13;
pub const SG_LOGITEM_GL_FRAMEBUFFER_STATUS_UNKNOWN: c_int = 14;
pub const SG_LOGITEM_D3D11_CREATE_BUFFER_FAILED: c_int = 15;
pub const SG_LOGITEM_D3D11_CREATE_BUFFER_SRV_FAILED: c_int = 16;
pub const SG_LOGITEM_D3D11_CREATE_DEPTH_TEXTURE_UNSUPPORTED_PIXEL_FORMAT: c_int = 17;
pub const SG_LOGITEM_D3D11_CREATE_DEPTH_TEXTURE_FAILED: c_int = 18;
pub const SG_LOGITEM_D3D11_CREATE_2D_TEXTURE_UNSUPPORTED_PIXEL_FORMAT: c_int = 19;
pub const SG_LOGITEM_D3D11_CREATE_2D_TEXTURE_FAILED: c_int = 20;
pub const SG_LOGITEM_D3D11_CREATE_2D_SRV_FAILED: c_int = 21;
pub const SG_LOGITEM_D3D11_CREATE_3D_TEXTURE_UNSUPPORTED_PIXEL_FORMAT: c_int = 22;
pub const SG_LOGITEM_D3D11_CREATE_3D_TEXTURE_FAILED: c_int = 23;
pub const SG_LOGITEM_D3D11_CREATE_3D_SRV_FAILED: c_int = 24;
pub const SG_LOGITEM_D3D11_CREATE_MSAA_TEXTURE_FAILED: c_int = 25;
pub const SG_LOGITEM_D3D11_CREATE_SAMPLER_STATE_FAILED: c_int = 26;
pub const SG_LOGITEM_D3D11_LOAD_D3DCOMPILER_47_DLL_FAILED: c_int = 27;
pub const SG_LOGITEM_D3D11_SHADER_COMPILATION_FAILED: c_int = 28;
pub const SG_LOGITEM_D3D11_SHADER_COMPILATION_OUTPUT: c_int = 29;
pub const SG_LOGITEM_D3D11_CREATE_CONSTANT_BUFFER_FAILED: c_int = 30;
pub const SG_LOGITEM_D3D11_CREATE_INPUT_LAYOUT_FAILED: c_int = 31;
pub const SG_LOGITEM_D3D11_CREATE_RASTERIZER_STATE_FAILED: c_int = 32;
pub const SG_LOGITEM_D3D11_CREATE_DEPTH_STENCIL_STATE_FAILED: c_int = 33;
pub const SG_LOGITEM_D3D11_CREATE_BLEND_STATE_FAILED: c_int = 34;
pub const SG_LOGITEM_D3D11_CREATE_RTV_FAILED: c_int = 35;
pub const SG_LOGITEM_D3D11_CREATE_DSV_FAILED: c_int = 36;
pub const SG_LOGITEM_D3D11_MAP_FOR_UPDATE_BUFFER_FAILED: c_int = 37;
pub const SG_LOGITEM_D3D11_MAP_FOR_APPEND_BUFFER_FAILED: c_int = 38;
pub const SG_LOGITEM_D3D11_MAP_FOR_UPDATE_IMAGE_FAILED: c_int = 39;
pub const SG_LOGITEM_METAL_CREATE_BUFFER_FAILED: c_int = 40;
pub const SG_LOGITEM_METAL_TEXTURE_FORMAT_NOT_SUPPORTED: c_int = 41;
pub const SG_LOGITEM_METAL_CREATE_TEXTURE_FAILED: c_int = 42;
pub const SG_LOGITEM_METAL_CREATE_SAMPLER_FAILED: c_int = 43;
pub const SG_LOGITEM_METAL_SHADER_COMPILATION_FAILED: c_int = 44;
pub const SG_LOGITEM_METAL_SHADER_CREATION_FAILED: c_int = 45;
pub const SG_LOGITEM_METAL_SHADER_COMPILATION_OUTPUT: c_int = 46;
pub const SG_LOGITEM_METAL_VERTEX_SHADER_ENTRY_NOT_FOUND: c_int = 47;
pub const SG_LOGITEM_METAL_FRAGMENT_SHADER_ENTRY_NOT_FOUND: c_int = 48;
pub const SG_LOGITEM_METAL_CREATE_RPS_FAILED: c_int = 49;
pub const SG_LOGITEM_METAL_CREATE_RPS_OUTPUT: c_int = 50;
pub const SG_LOGITEM_METAL_CREATE_DSS_FAILED: c_int = 51;
pub const SG_LOGITEM_WGPU_BINDGROUPS_POOL_EXHAUSTED: c_int = 52;
pub const SG_LOGITEM_WGPU_BINDGROUPSCACHE_SIZE_GREATER_ONE: c_int = 53;
pub const SG_LOGITEM_WGPU_BINDGROUPSCACHE_SIZE_POW2: c_int = 54;
pub const SG_LOGITEM_WGPU_CREATEBINDGROUP_FAILED: c_int = 55;
pub const SG_LOGITEM_WGPU_CREATE_BUFFER_FAILED: c_int = 56;
pub const SG_LOGITEM_WGPU_CREATE_TEXTURE_FAILED: c_int = 57;
pub const SG_LOGITEM_WGPU_CREATE_TEXTURE_VIEW_FAILED: c_int = 58;
pub const SG_LOGITEM_WGPU_CREATE_SAMPLER_FAILED: c_int = 59;
pub const SG_LOGITEM_WGPU_CREATE_SHADER_MODULE_FAILED: c_int = 60;
pub const SG_LOGITEM_WGPU_SHADER_TOO_MANY_IMAGES: c_int = 61;
pub const SG_LOGITEM_WGPU_SHADER_TOO_MANY_SAMPLERS: c_int = 62;
pub const SG_LOGITEM_WGPU_SHADER_TOO_MANY_STORAGEBUFFERS: c_int = 63;
pub const SG_LOGITEM_WGPU_SHADER_CREATE_BINDGROUP_LAYOUT_FAILED: c_int = 64;
pub const SG_LOGITEM_WGPU_CREATE_PIPELINE_LAYOUT_FAILED: c_int = 65;
pub const SG_LOGITEM_WGPU_CREATE_RENDER_PIPELINE_FAILED: c_int = 66;
pub const SG_LOGITEM_WGPU_ATTACHMENTS_CREATE_TEXTURE_VIEW_FAILED: c_int = 67;
pub const SG_LOGITEM_IDENTICAL_COMMIT_LISTENER: c_int = 68;
pub const SG_LOGITEM_COMMIT_LISTENER_ARRAY_FULL: c_int = 69;
pub const SG_LOGITEM_TRACE_HOOKS_NOT_ENABLED: c_int = 70;
pub const SG_LOGITEM_DEALLOC_BUFFER_INVALID_STATE: c_int = 71;
pub const SG_LOGITEM_DEALLOC_IMAGE_INVALID_STATE: c_int = 72;
pub const SG_LOGITEM_DEALLOC_SAMPLER_INVALID_STATE: c_int = 73;
pub const SG_LOGITEM_DEALLOC_SHADER_INVALID_STATE: c_int = 74;
pub const SG_LOGITEM_DEALLOC_PIPELINE_INVALID_STATE: c_int = 75;
pub const SG_LOGITEM_DEALLOC_ATTACHMENTS_INVALID_STATE: c_int = 76;
pub const SG_LOGITEM_INIT_BUFFER_INVALID_STATE: c_int = 77;
pub const SG_LOGITEM_INIT_IMAGE_INVALID_STATE: c_int = 78;
pub const SG_LOGITEM_INIT_SAMPLER_INVALID_STATE: c_int = 79;
pub const SG_LOGITEM_INIT_SHADER_INVALID_STATE: c_int = 80;
pub const SG_LOGITEM_INIT_PIPELINE_INVALID_STATE: c_int = 81;
pub const SG_LOGITEM_INIT_ATTACHMENTS_INVALID_STATE: c_int = 82;
pub const SG_LOGITEM_UNINIT_BUFFER_INVALID_STATE: c_int = 83;
pub const SG_LOGITEM_UNINIT_IMAGE_INVALID_STATE: c_int = 84;
pub const SG_LOGITEM_UNINIT_SAMPLER_INVALID_STATE: c_int = 85;
pub const SG_LOGITEM_UNINIT_SHADER_INVALID_STATE: c_int = 86;
pub const SG_LOGITEM_UNINIT_PIPELINE_INVALID_STATE: c_int = 87;
pub const SG_LOGITEM_UNINIT_ATTACHMENTS_INVALID_STATE: c_int = 88;
pub const SG_LOGITEM_FAIL_BUFFER_INVALID_STATE: c_int = 89;
pub const SG_LOGITEM_FAIL_IMAGE_INVALID_STATE: c_int = 90;
pub const SG_LOGITEM_FAIL_SAMPLER_INVALID_STATE: c_int = 91;
pub const SG_LOGITEM_FAIL_SHADER_INVALID_STATE: c_int = 92;
pub const SG_LOGITEM_FAIL_PIPELINE_INVALID_STATE: c_int = 93;
pub const SG_LOGITEM_FAIL_ATTACHMENTS_INVALID_STATE: c_int = 94;
pub const SG_LOGITEM_BUFFER_POOL_EXHAUSTED: c_int = 95;
pub const SG_LOGITEM_IMAGE_POOL_EXHAUSTED: c_int = 96;
pub const SG_LOGITEM_SAMPLER_POOL_EXHAUSTED: c_int = 97;
pub const SG_LOGITEM_SHADER_POOL_EXHAUSTED: c_int = 98;
pub const SG_LOGITEM_PIPELINE_POOL_EXHAUSTED: c_int = 99;
pub const SG_LOGITEM_PASS_POOL_EXHAUSTED: c_int = 100;
pub const SG_LOGITEM_BEGINPASS_ATTACHMENT_INVALID: c_int = 101;
pub const SG_LOGITEM_DRAW_WITHOUT_BINDINGS: c_int = 102;
pub const SG_LOGITEM_VALIDATE_BUFFERDESC_CANARY: c_int = 103;
pub const SG_LOGITEM_VALIDATE_BUFFERDESC_SIZE: c_int = 104;
pub const SG_LOGITEM_VALIDATE_BUFFERDESC_DATA: c_int = 105;
pub const SG_LOGITEM_VALIDATE_BUFFERDESC_DATA_SIZE: c_int = 106;
pub const SG_LOGITEM_VALIDATE_BUFFERDESC_NO_DATA: c_int = 107;
pub const SG_LOGITEM_VALIDATE_BUFFERDESC_STORAGEBUFFER_SUPPORTED: c_int = 108;
pub const SG_LOGITEM_VALIDATE_BUFFERDESC_STORAGEBUFFER_SIZE_MULTIPLE_4: c_int = 109;
pub const SG_LOGITEM_VALIDATE_IMAGEDATA_NODATA: c_int = 110;
pub const SG_LOGITEM_VALIDATE_IMAGEDATA_DATA_SIZE: c_int = 111;
pub const SG_LOGITEM_VALIDATE_IMAGEDESC_CANARY: c_int = 112;
pub const SG_LOGITEM_VALIDATE_IMAGEDESC_WIDTH: c_int = 113;
pub const SG_LOGITEM_VALIDATE_IMAGEDESC_HEIGHT: c_int = 114;
pub const SG_LOGITEM_VALIDATE_IMAGEDESC_RT_PIXELFORMAT: c_int = 115;
pub const SG_LOGITEM_VALIDATE_IMAGEDESC_NONRT_PIXELFORMAT: c_int = 116;
pub const SG_LOGITEM_VALIDATE_IMAGEDESC_MSAA_BUT_NO_RT: c_int = 117;
pub const SG_LOGITEM_VALIDATE_IMAGEDESC_NO_MSAA_RT_SUPPORT: c_int = 118;
pub const SG_LOGITEM_VALIDATE_IMAGEDESC_MSAA_NUM_MIPMAPS: c_int = 119;
pub const SG_LOGITEM_VALIDATE_IMAGEDESC_MSAA_3D_IMAGE: c_int = 120;
pub const SG_LOGITEM_VALIDATE_IMAGEDESC_DEPTH_3D_IMAGE: c_int = 121;
pub const SG_LOGITEM_VALIDATE_IMAGEDESC_RT_IMMUTABLE: c_int = 122;
pub const SG_LOGITEM_VALIDATE_IMAGEDESC_RT_NO_DATA: c_int = 123;
pub const SG_LOGITEM_VALIDATE_IMAGEDESC_INJECTED_NO_DATA: c_int = 124;
pub const SG_LOGITEM_VALIDATE_IMAGEDESC_DYNAMIC_NO_DATA: c_int = 125;
pub const SG_LOGITEM_VALIDATE_IMAGEDESC_COMPRESSED_IMMUTABLE: c_int = 126;
pub const SG_LOGITEM_VALIDATE_SAMPLERDESC_CANARY: c_int = 127;
pub const SG_LOGITEM_VALIDATE_SAMPLERDESC_MINFILTER_NONE: c_int = 128;
pub const SG_LOGITEM_VALIDATE_SAMPLERDESC_MAGFILTER_NONE: c_int = 129;
pub const SG_LOGITEM_VALIDATE_SAMPLERDESC_ANISTROPIC_REQUIRES_LINEAR_FILTERING: c_int = 130;
pub const SG_LOGITEM_VALIDATE_SHADERDESC_CANARY: c_int = 131;
pub const SG_LOGITEM_VALIDATE_SHADERDESC_SOURCE: c_int = 132;
pub const SG_LOGITEM_VALIDATE_SHADERDESC_BYTECODE: c_int = 133;
pub const SG_LOGITEM_VALIDATE_SHADERDESC_SOURCE_OR_BYTECODE: c_int = 134;
pub const SG_LOGITEM_VALIDATE_SHADERDESC_NO_BYTECODE_SIZE: c_int = 135;
pub const SG_LOGITEM_VALIDATE_SHADERDESC_NO_CONT_UBS: c_int = 136;
pub const SG_LOGITEM_VALIDATE_SHADERDESC_NO_CONT_UB_MEMBERS: c_int = 137;
pub const SG_LOGITEM_VALIDATE_SHADERDESC_NO_UB_MEMBERS: c_int = 138;
pub const SG_LOGITEM_VALIDATE_SHADERDESC_UB_MEMBER_NAME: c_int = 139;
pub const SG_LOGITEM_VALIDATE_SHADERDESC_UB_SIZE_MISMATCH: c_int = 140;
pub const SG_LOGITEM_VALIDATE_SHADERDESC_UB_ARRAY_COUNT: c_int = 141;
pub const SG_LOGITEM_VALIDATE_SHADERDESC_UB_STD140_ARRAY_TYPE: c_int = 142;
pub const SG_LOGITEM_VALIDATE_SHADERDESC_NO_CONT_STORAGEBUFFERS: c_int = 143;
pub const SG_LOGITEM_VALIDATE_SHADERDESC_STORAGEBUFFER_READONLY: c_int = 144;
pub const SG_LOGITEM_VALIDATE_SHADERDESC_NO_CONT_IMAGES: c_int = 145;
pub const SG_LOGITEM_VALIDATE_SHADERDESC_NO_CONT_SAMPLERS: c_int = 146;
pub const SG_LOGITEM_VALIDATE_SHADERDESC_IMAGE_SAMPLER_PAIR_IMAGE_SLOT_OUT_OF_RANGE: c_int = 147;
pub const SG_LOGITEM_VALIDATE_SHADERDESC_IMAGE_SAMPLER_PAIR_SAMPLER_SLOT_OUT_OF_RANGE: c_int = 148;
pub const SG_LOGITEM_VALIDATE_SHADERDESC_IMAGE_SAMPLER_PAIR_NAME_REQUIRED_FOR_GL: c_int = 149;
pub const SG_LOGITEM_VALIDATE_SHADERDESC_IMAGE_SAMPLER_PAIR_HAS_NAME_BUT_NOT_USED: c_int = 150;
pub const SG_LOGITEM_VALIDATE_SHADERDESC_IMAGE_SAMPLER_PAIR_HAS_IMAGE_BUT_NOT_USED: c_int = 151;
pub const SG_LOGITEM_VALIDATE_SHADERDESC_IMAGE_SAMPLER_PAIR_HAS_SAMPLER_BUT_NOT_USED: c_int = 152;
pub const SG_LOGITEM_VALIDATE_SHADERDESC_NONFILTERING_SAMPLER_REQUIRED: c_int = 153;
pub const SG_LOGITEM_VALIDATE_SHADERDESC_COMPARISON_SAMPLER_REQUIRED: c_int = 154;
pub const SG_LOGITEM_VALIDATE_SHADERDESC_IMAGE_NOT_REFERENCED_BY_IMAGE_SAMPLER_PAIRS: c_int = 155;
pub const SG_LOGITEM_VALIDATE_SHADERDESC_SAMPLER_NOT_REFERENCED_BY_IMAGE_SAMPLER_PAIRS: c_int = 156;
pub const SG_LOGITEM_VALIDATE_SHADERDESC_NO_CONT_IMAGE_SAMPLER_PAIRS: c_int = 157;
pub const SG_LOGITEM_VALIDATE_SHADERDESC_ATTR_STRING_TOO_LONG: c_int = 158;
pub const SG_LOGITEM_VALIDATE_PIPELINEDESC_CANARY: c_int = 159;
pub const SG_LOGITEM_VALIDATE_PIPELINEDESC_SHADER: c_int = 160;
pub const SG_LOGITEM_VALIDATE_PIPELINEDESC_NO_CONT_ATTRS: c_int = 161;
pub const SG_LOGITEM_VALIDATE_PIPELINEDESC_LAYOUT_STRIDE4: c_int = 162;
pub const SG_LOGITEM_VALIDATE_PIPELINEDESC_ATTR_SEMANTICS: c_int = 163;
pub const SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_CANARY: c_int = 164;
pub const SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_NO_ATTACHMENTS: c_int = 165;
pub const SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_NO_CONT_COLOR_ATTS: c_int = 166;
pub const SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_IMAGE: c_int = 167;
pub const SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_MIPLEVEL: c_int = 168;
pub const SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_FACE: c_int = 169;
pub const SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_LAYER: c_int = 170;
pub const SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_SLICE: c_int = 171;
pub const SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_IMAGE_NO_RT: c_int = 172;
pub const SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_COLOR_INV_PIXELFORMAT: c_int = 173;
pub const SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_DEPTH_INV_PIXELFORMAT: c_int = 174;
pub const SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_IMAGE_SIZES: c_int = 175;
pub const SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_IMAGE_SAMPLE_COUNTS: c_int = 176;
pub const SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_RESOLVE_COLOR_IMAGE_MSAA: c_int = 177;
pub const SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_RESOLVE_IMAGE: c_int = 178;
pub const SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_RESOLVE_SAMPLE_COUNT: c_int = 179;
pub const SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_RESOLVE_MIPLEVEL: c_int = 180;
pub const SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_RESOLVE_FACE: c_int = 181;
pub const SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_RESOLVE_LAYER: c_int = 182;
pub const SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_RESOLVE_SLICE: c_int = 183;
pub const SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_RESOLVE_IMAGE_NO_RT: c_int = 184;
pub const SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_RESOLVE_IMAGE_SIZES: c_int = 185;
pub const SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_RESOLVE_IMAGE_FORMAT: c_int = 186;
pub const SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_DEPTH_IMAGE: c_int = 187;
pub const SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_DEPTH_MIPLEVEL: c_int = 188;
pub const SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_DEPTH_FACE: c_int = 189;
pub const SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_DEPTH_LAYER: c_int = 190;
pub const SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_DEPTH_SLICE: c_int = 191;
pub const SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_DEPTH_IMAGE_NO_RT: c_int = 192;
pub const SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_DEPTH_IMAGE_SIZES: c_int = 193;
pub const SG_LOGITEM_VALIDATE_ATTACHMENTSDESC_DEPTH_IMAGE_SAMPLE_COUNT: c_int = 194;
pub const SG_LOGITEM_VALIDATE_BEGINPASS_CANARY: c_int = 195;
pub const SG_LOGITEM_VALIDATE_BEGINPASS_ATTACHMENTS_EXISTS: c_int = 196;
pub const SG_LOGITEM_VALIDATE_BEGINPASS_ATTACHMENTS_VALID: c_int = 197;
pub const SG_LOGITEM_VALIDATE_BEGINPASS_COLOR_ATTACHMENT_IMAGE: c_int = 198;
pub const SG_LOGITEM_VALIDATE_BEGINPASS_RESOLVE_ATTACHMENT_IMAGE: c_int = 199;
pub const SG_LOGITEM_VALIDATE_BEGINPASS_DEPTHSTENCIL_ATTACHMENT_IMAGE: c_int = 200;
pub const SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_WIDTH: c_int = 201;
pub const SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_WIDTH_NOTSET: c_int = 202;
pub const SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_HEIGHT: c_int = 203;
pub const SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_HEIGHT_NOTSET: c_int = 204;
pub const SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_SAMPLECOUNT: c_int = 205;
pub const SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_SAMPLECOUNT_NOTSET: c_int = 206;
pub const SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_COLORFORMAT: c_int = 207;
pub const SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_COLORFORMAT_NOTSET: c_int = 208;
pub const SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_EXPECT_DEPTHFORMAT_NOTSET: c_int = 209;
pub const SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_METAL_EXPECT_CURRENTDRAWABLE: c_int = 210;
pub const SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_METAL_EXPECT_CURRENTDRAWABLE_NOTSET: c_int = 211;
pub const SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_METAL_EXPECT_DEPTHSTENCILTEXTURE: c_int = 212;
pub const SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_METAL_EXPECT_DEPTHSTENCILTEXTURE_NOTSET: c_int = 213;
pub const SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_METAL_EXPECT_MSAACOLORTEXTURE: c_int = 214;
pub const SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_METAL_EXPECT_MSAACOLORTEXTURE_NOTSET: c_int = 215;
pub const SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_D3D11_EXPECT_RENDERVIEW: c_int = 216;
pub const SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_D3D11_EXPECT_RENDERVIEW_NOTSET: c_int = 217;
pub const SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_D3D11_EXPECT_RESOLVEVIEW: c_int = 218;
pub const SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_D3D11_EXPECT_RESOLVEVIEW_NOTSET: c_int = 219;
pub const SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_D3D11_EXPECT_DEPTHSTENCILVIEW: c_int = 220;
pub const SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_D3D11_EXPECT_DEPTHSTENCILVIEW_NOTSET: c_int = 221;
pub const SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_WGPU_EXPECT_RENDERVIEW: c_int = 222;
pub const SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_WGPU_EXPECT_RENDERVIEW_NOTSET: c_int = 223;
pub const SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_WGPU_EXPECT_RESOLVEVIEW: c_int = 224;
pub const SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_WGPU_EXPECT_RESOLVEVIEW_NOTSET: c_int = 225;
pub const SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_WGPU_EXPECT_DEPTHSTENCILVIEW: c_int = 226;
pub const SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_WGPU_EXPECT_DEPTHSTENCILVIEW_NOTSET: c_int = 227;
pub const SG_LOGITEM_VALIDATE_BEGINPASS_SWAPCHAIN_GL_EXPECT_FRAMEBUFFER_NOTSET: c_int = 228;
pub const SG_LOGITEM_VALIDATE_APIP_PIPELINE_VALID_ID: c_int = 229;
pub const SG_LOGITEM_VALIDATE_APIP_PIPELINE_EXISTS: c_int = 230;
pub const SG_LOGITEM_VALIDATE_APIP_PIPELINE_VALID: c_int = 231;
pub const SG_LOGITEM_VALIDATE_APIP_SHADER_EXISTS: c_int = 232;
pub const SG_LOGITEM_VALIDATE_APIP_SHADER_VALID: c_int = 233;
pub const SG_LOGITEM_VALIDATE_APIP_CURPASS_ATTACHMENTS_EXISTS: c_int = 234;
pub const SG_LOGITEM_VALIDATE_APIP_CURPASS_ATTACHMENTS_VALID: c_int = 235;
pub const SG_LOGITEM_VALIDATE_APIP_ATT_COUNT: c_int = 236;
pub const SG_LOGITEM_VALIDATE_APIP_COLOR_FORMAT: c_int = 237;
pub const SG_LOGITEM_VALIDATE_APIP_DEPTH_FORMAT: c_int = 238;
pub const SG_LOGITEM_VALIDATE_APIP_SAMPLE_COUNT: c_int = 239;
pub const SG_LOGITEM_VALIDATE_ABND_PIPELINE: c_int = 240;
pub const SG_LOGITEM_VALIDATE_ABND_PIPELINE_EXISTS: c_int = 241;
pub const SG_LOGITEM_VALIDATE_ABND_PIPELINE_VALID: c_int = 242;
pub const SG_LOGITEM_VALIDATE_ABND_VBS: c_int = 243;
pub const SG_LOGITEM_VALIDATE_ABND_VB_EXISTS: c_int = 244;
pub const SG_LOGITEM_VALIDATE_ABND_VB_TYPE: c_int = 245;
pub const SG_LOGITEM_VALIDATE_ABND_VB_OVERFLOW: c_int = 246;
pub const SG_LOGITEM_VALIDATE_ABND_NO_IB: c_int = 247;
pub const SG_LOGITEM_VALIDATE_ABND_IB: c_int = 248;
pub const SG_LOGITEM_VALIDATE_ABND_IB_EXISTS: c_int = 249;
pub const SG_LOGITEM_VALIDATE_ABND_IB_TYPE: c_int = 250;
pub const SG_LOGITEM_VALIDATE_ABND_IB_OVERFLOW: c_int = 251;
pub const SG_LOGITEM_VALIDATE_ABND_VS_EXPECTED_IMAGE_BINDING: c_int = 252;
pub const SG_LOGITEM_VALIDATE_ABND_VS_IMG_EXISTS: c_int = 253;
pub const SG_LOGITEM_VALIDATE_ABND_VS_IMAGE_TYPE_MISMATCH: c_int = 254;
pub const SG_LOGITEM_VALIDATE_ABND_VS_IMAGE_MSAA: c_int = 255;
pub const SG_LOGITEM_VALIDATE_ABND_VS_EXPECTED_FILTERABLE_IMAGE: c_int = 256;
pub const SG_LOGITEM_VALIDATE_ABND_VS_EXPECTED_DEPTH_IMAGE: c_int = 257;
pub const SG_LOGITEM_VALIDATE_ABND_VS_UNEXPECTED_IMAGE_BINDING: c_int = 258;
pub const SG_LOGITEM_VALIDATE_ABND_VS_EXPECTED_SAMPLER_BINDING: c_int = 259;
pub const SG_LOGITEM_VALIDATE_ABND_VS_UNEXPECTED_SAMPLER_COMPARE_NEVER: c_int = 260;
pub const SG_LOGITEM_VALIDATE_ABND_VS_EXPECTED_SAMPLER_COMPARE_NEVER: c_int = 261;
pub const SG_LOGITEM_VALIDATE_ABND_VS_EXPECTED_NONFILTERING_SAMPLER: c_int = 262;
pub const SG_LOGITEM_VALIDATE_ABND_VS_UNEXPECTED_SAMPLER_BINDING: c_int = 263;
pub const SG_LOGITEM_VALIDATE_ABND_VS_SMP_EXISTS: c_int = 264;
pub const SG_LOGITEM_VALIDATE_ABND_VS_EXPECTED_STORAGEBUFFER_BINDING: c_int = 265;
pub const SG_LOGITEM_VALIDATE_ABND_VS_STORAGEBUFFER_EXISTS: c_int = 266;
pub const SG_LOGITEM_VALIDATE_ABND_VS_STORAGEBUFFER_BINDING_BUFFERTYPE: c_int = 267;
pub const SG_LOGITEM_VALIDATE_ABND_VS_UNEXPECTED_STORAGEBUFFER_BINDING: c_int = 268;
pub const SG_LOGITEM_VALIDATE_ABND_FS_EXPECTED_IMAGE_BINDING: c_int = 269;
pub const SG_LOGITEM_VALIDATE_ABND_FS_IMG_EXISTS: c_int = 270;
pub const SG_LOGITEM_VALIDATE_ABND_FS_IMAGE_TYPE_MISMATCH: c_int = 271;
pub const SG_LOGITEM_VALIDATE_ABND_FS_IMAGE_MSAA: c_int = 272;
pub const SG_LOGITEM_VALIDATE_ABND_FS_EXPECTED_FILTERABLE_IMAGE: c_int = 273;
pub const SG_LOGITEM_VALIDATE_ABND_FS_EXPECTED_DEPTH_IMAGE: c_int = 274;
pub const SG_LOGITEM_VALIDATE_ABND_FS_UNEXPECTED_IMAGE_BINDING: c_int = 275;
pub const SG_LOGITEM_VALIDATE_ABND_FS_EXPECTED_SAMPLER_BINDING: c_int = 276;
pub const SG_LOGITEM_VALIDATE_ABND_FS_UNEXPECTED_SAMPLER_COMPARE_NEVER: c_int = 277;
pub const SG_LOGITEM_VALIDATE_ABND_FS_EXPECTED_SAMPLER_COMPARE_NEVER: c_int = 278;
pub const SG_LOGITEM_VALIDATE_ABND_FS_EXPECTED_NONFILTERING_SAMPLER: c_int = 279;
pub const SG_LOGITEM_VALIDATE_ABND_FS_UNEXPECTED_SAMPLER_BINDING: c_int = 280;
pub const SG_LOGITEM_VALIDATE_ABND_FS_SMP_EXISTS: c_int = 281;
pub const SG_LOGITEM_VALIDATE_ABND_FS_EXPECTED_STORAGEBUFFER_BINDING: c_int = 282;
pub const SG_LOGITEM_VALIDATE_ABND_FS_STORAGEBUFFER_EXISTS: c_int = 283;
pub const SG_LOGITEM_VALIDATE_ABND_FS_STORAGEBUFFER_BINDING_BUFFERTYPE: c_int = 284;
pub const SG_LOGITEM_VALIDATE_ABND_FS_UNEXPECTED_STORAGEBUFFER_BINDING: c_int = 285;
pub const SG_LOGITEM_VALIDATE_AUB_NO_PIPELINE: c_int = 286;
pub const SG_LOGITEM_VALIDATE_AUB_NO_UB_AT_SLOT: c_int = 287;
pub const SG_LOGITEM_VALIDATE_AUB_SIZE: c_int = 288;
pub const SG_LOGITEM_VALIDATE_UPDATEBUF_USAGE: c_int = 289;
pub const SG_LOGITEM_VALIDATE_UPDATEBUF_SIZE: c_int = 290;
pub const SG_LOGITEM_VALIDATE_UPDATEBUF_ONCE: c_int = 291;
pub const SG_LOGITEM_VALIDATE_UPDATEBUF_APPEND: c_int = 292;
pub const SG_LOGITEM_VALIDATE_APPENDBUF_USAGE: c_int = 293;
pub const SG_LOGITEM_VALIDATE_APPENDBUF_SIZE: c_int = 294;
pub const SG_LOGITEM_VALIDATE_APPENDBUF_UPDATE: c_int = 295;
pub const SG_LOGITEM_VALIDATE_UPDIMG_USAGE: c_int = 296;
pub const SG_LOGITEM_VALIDATE_UPDIMG_ONCE: c_int = 297;
pub const SG_LOGITEM_VALIDATION_FAILED: c_int = 298;
pub const enum_sg_log_item = c_uint;
pub const sg_log_item = enum_sg_log_item;
pub const struct_sg_environment_defaults = extern struct {
    color_format: sg_pixel_format = @import("std").mem.zeroes(sg_pixel_format),
    depth_format: sg_pixel_format = @import("std").mem.zeroes(sg_pixel_format),
    sample_count: c_int = @import("std").mem.zeroes(c_int),
};
pub const sg_environment_defaults = struct_sg_environment_defaults;
pub const struct_sg_metal_environment = extern struct {
    device: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
};
pub const sg_metal_environment = struct_sg_metal_environment;
pub const struct_sg_d3d11_environment = extern struct {
    device: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    device_context: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
};
pub const sg_d3d11_environment = struct_sg_d3d11_environment;
pub const struct_sg_wgpu_environment = extern struct {
    device: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
};
pub const sg_wgpu_environment = struct_sg_wgpu_environment;
pub const struct_sg_environment = extern struct {
    defaults: sg_environment_defaults = @import("std").mem.zeroes(sg_environment_defaults),
    metal: sg_metal_environment = @import("std").mem.zeroes(sg_metal_environment),
    d3d11: sg_d3d11_environment = @import("std").mem.zeroes(sg_d3d11_environment),
    wgpu: sg_wgpu_environment = @import("std").mem.zeroes(sg_wgpu_environment),
};
pub const sg_environment = struct_sg_environment;
pub const struct_sg_commit_listener = extern struct {
    func: ?*const fn (?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.c) void),
    user_data: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const sg_commit_listener = struct_sg_commit_listener;
pub const struct_sg_allocator = extern struct {
    alloc_fn: ?*const fn (usize, ?*anyopaque) callconv(.c) ?*anyopaque = @import("std").mem.zeroes(?*const fn (usize, ?*anyopaque) callconv(.c) ?*anyopaque),
    free_fn: ?*const fn (?*anyopaque, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*anyopaque, ?*anyopaque) callconv(.c) void),
    user_data: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const sg_allocator = struct_sg_allocator;
pub const struct_sg_logger = extern struct {
    func: ?*const fn ([*c]const u8, u32, u32, [*c]const u8, u32, [*c]const u8, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]const u8, u32, u32, [*c]const u8, u32, [*c]const u8, ?*anyopaque) callconv(.c) void),
    user_data: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const sg_logger = struct_sg_logger;
pub const struct_sg_desc = extern struct {
    _start_canary: u32 = @import("std").mem.zeroes(u32),
    buffer_pool_size: c_int = @import("std").mem.zeroes(c_int),
    image_pool_size: c_int = @import("std").mem.zeroes(c_int),
    sampler_pool_size: c_int = @import("std").mem.zeroes(c_int),
    shader_pool_size: c_int = @import("std").mem.zeroes(c_int),
    pipeline_pool_size: c_int = @import("std").mem.zeroes(c_int),
    attachments_pool_size: c_int = @import("std").mem.zeroes(c_int),
    uniform_buffer_size: c_int = @import("std").mem.zeroes(c_int),
    max_commit_listeners: c_int = @import("std").mem.zeroes(c_int),
    disable_validation: bool = @import("std").mem.zeroes(bool),
    mtl_force_managed_storage_mode: bool = @import("std").mem.zeroes(bool),
    mtl_use_command_buffer_with_retained_references: bool = @import("std").mem.zeroes(bool),
    wgpu_disable_bindgroups_cache: bool = @import("std").mem.zeroes(bool),
    wgpu_bindgroups_cache_size: c_int = @import("std").mem.zeroes(c_int),
    allocator: sg_allocator = @import("std").mem.zeroes(sg_allocator),
    logger: sg_logger = @import("std").mem.zeroes(sg_logger),
    environment: sg_environment = @import("std").mem.zeroes(sg_environment),
    _end_canary: u32 = @import("std").mem.zeroes(u32),
};
pub const sg_desc = struct_sg_desc;
pub extern fn sg_setup(desc: [*c]const sg_desc) void;
pub extern fn sg_shutdown() void;
pub extern fn sg_isvalid() bool;
pub extern fn sg_reset_state_cache() void;
pub extern fn sg_install_trace_hooks(trace_hooks: [*c]const sg_trace_hooks) sg_trace_hooks;
pub extern fn sg_push_debug_group(name: [*c]const u8) void;
pub extern fn sg_pop_debug_group() void;
pub extern fn sg_add_commit_listener(listener: sg_commit_listener) bool;
pub extern fn sg_remove_commit_listener(listener: sg_commit_listener) bool;
pub extern fn sg_make_buffer(desc: [*c]const sg_buffer_desc) sg_buffer;
pub extern fn sg_make_image(desc: [*c]const sg_image_desc) sg_image;
pub extern fn sg_make_sampler(desc: [*c]const sg_sampler_desc) sg_sampler;
pub extern fn sg_make_shader(desc: [*c]const sg_shader_desc) sg_shader;
pub extern fn sg_make_pipeline(desc: [*c]const sg_pipeline_desc) sg_pipeline;
pub extern fn sg_make_attachments(desc: [*c]const sg_attachments_desc) sg_attachments;
pub extern fn sg_destroy_buffer(buf: sg_buffer) void;
pub extern fn sg_destroy_image(img: sg_image) void;
pub extern fn sg_destroy_sampler(smp: sg_sampler) void;
pub extern fn sg_destroy_shader(shd: sg_shader) void;
pub extern fn sg_destroy_pipeline(pip: sg_pipeline) void;
pub extern fn sg_destroy_attachments(atts: sg_attachments) void;
pub extern fn sg_update_buffer(buf: sg_buffer, data: [*c]const sg_range) void;
pub extern fn sg_update_image(img: sg_image, data: [*c]const sg_image_data) void;
pub extern fn sg_append_buffer(buf: sg_buffer, data: [*c]const sg_range) c_int;
pub extern fn sg_query_buffer_overflow(buf: sg_buffer) bool;
pub extern fn sg_query_buffer_will_overflow(buf: sg_buffer, size: usize) bool;
pub extern fn sg_begin_pass(pass: [*c]const sg_pass) void;
pub extern fn sg_apply_viewport(x: c_int, y: c_int, width: c_int, height: c_int, origin_top_left: bool) void;
pub extern fn sg_apply_viewportf(x: f32, y: f32, width: f32, height: f32, origin_top_left: bool) void;
pub extern fn sg_apply_scissor_rect(x: c_int, y: c_int, width: c_int, height: c_int, origin_top_left: bool) void;
pub extern fn sg_apply_scissor_rectf(x: f32, y: f32, width: f32, height: f32, origin_top_left: bool) void;
pub extern fn sg_apply_pipeline(pip: sg_pipeline) void;
pub extern fn sg_apply_bindings(bindings: [*c]const sg_bindings) void;
pub extern fn sg_apply_uniforms(stage: sg_shader_stage, ub_index: c_int, data: [*c]const sg_range) void;
pub extern fn sg_draw(base_element: c_int, num_elements: c_int, num_instances: c_int) void;
pub extern fn sg_end_pass() void;
pub extern fn sg_commit() void;
pub extern fn sg_query_desc() sg_desc;
pub extern fn sg_query_backend() sg_backend;
pub extern fn sg_query_features() sg_features;
pub extern fn sg_query_limits() sg_limits;
pub extern fn sg_query_pixelformat(fmt: sg_pixel_format) sg_pixelformat_info;
pub extern fn sg_query_row_pitch(fmt: sg_pixel_format, width: c_int, row_align_bytes: c_int) c_int;
pub extern fn sg_query_surface_pitch(fmt: sg_pixel_format, width: c_int, height: c_int, row_align_bytes: c_int) c_int;
pub extern fn sg_query_buffer_state(buf: sg_buffer) sg_resource_state;
pub extern fn sg_query_image_state(img: sg_image) sg_resource_state;
pub extern fn sg_query_sampler_state(smp: sg_sampler) sg_resource_state;
pub extern fn sg_query_shader_state(shd: sg_shader) sg_resource_state;
pub extern fn sg_query_pipeline_state(pip: sg_pipeline) sg_resource_state;
pub extern fn sg_query_attachments_state(atts: sg_attachments) sg_resource_state;
pub extern fn sg_query_buffer_info(buf: sg_buffer) sg_buffer_info;
pub extern fn sg_query_image_info(img: sg_image) sg_image_info;
pub extern fn sg_query_sampler_info(smp: sg_sampler) sg_sampler_info;
pub extern fn sg_query_shader_info(shd: sg_shader) sg_shader_info;
pub extern fn sg_query_pipeline_info(pip: sg_pipeline) sg_pipeline_info;
pub extern fn sg_query_attachments_info(atts: sg_attachments) sg_attachments_info;
pub extern fn sg_query_buffer_desc(buf: sg_buffer) sg_buffer_desc;
pub extern fn sg_query_image_desc(img: sg_image) sg_image_desc;
pub extern fn sg_query_sampler_desc(smp: sg_sampler) sg_sampler_desc;
pub extern fn sg_query_shader_desc(shd: sg_shader) sg_shader_desc;
pub extern fn sg_query_pipeline_desc(pip: sg_pipeline) sg_pipeline_desc;
pub extern fn sg_query_attachments_desc(atts: sg_attachments) sg_attachments_desc;
pub extern fn sg_query_buffer_defaults(desc: [*c]const sg_buffer_desc) sg_buffer_desc;
pub extern fn sg_query_image_defaults(desc: [*c]const sg_image_desc) sg_image_desc;
pub extern fn sg_query_sampler_defaults(desc: [*c]const sg_sampler_desc) sg_sampler_desc;
pub extern fn sg_query_shader_defaults(desc: [*c]const sg_shader_desc) sg_shader_desc;
pub extern fn sg_query_pipeline_defaults(desc: [*c]const sg_pipeline_desc) sg_pipeline_desc;
pub extern fn sg_query_attachments_defaults(desc: [*c]const sg_attachments_desc) sg_attachments_desc;
pub extern fn sg_alloc_buffer() sg_buffer;
pub extern fn sg_alloc_image() sg_image;
pub extern fn sg_alloc_sampler() sg_sampler;
pub extern fn sg_alloc_shader() sg_shader;
pub extern fn sg_alloc_pipeline() sg_pipeline;
pub extern fn sg_alloc_attachments() sg_attachments;
pub extern fn sg_dealloc_buffer(buf: sg_buffer) void;
pub extern fn sg_dealloc_image(img: sg_image) void;
pub extern fn sg_dealloc_sampler(smp: sg_sampler) void;
pub extern fn sg_dealloc_shader(shd: sg_shader) void;
pub extern fn sg_dealloc_pipeline(pip: sg_pipeline) void;
pub extern fn sg_dealloc_attachments(attachments: sg_attachments) void;
pub extern fn sg_init_buffer(buf: sg_buffer, desc: [*c]const sg_buffer_desc) void;
pub extern fn sg_init_image(img: sg_image, desc: [*c]const sg_image_desc) void;
pub extern fn sg_init_sampler(smg: sg_sampler, desc: [*c]const sg_sampler_desc) void;
pub extern fn sg_init_shader(shd: sg_shader, desc: [*c]const sg_shader_desc) void;
pub extern fn sg_init_pipeline(pip: sg_pipeline, desc: [*c]const sg_pipeline_desc) void;
pub extern fn sg_init_attachments(attachments: sg_attachments, desc: [*c]const sg_attachments_desc) void;
pub extern fn sg_uninit_buffer(buf: sg_buffer) void;
pub extern fn sg_uninit_image(img: sg_image) void;
pub extern fn sg_uninit_sampler(smp: sg_sampler) void;
pub extern fn sg_uninit_shader(shd: sg_shader) void;
pub extern fn sg_uninit_pipeline(pip: sg_pipeline) void;
pub extern fn sg_uninit_attachments(atts: sg_attachments) void;
pub extern fn sg_fail_buffer(buf: sg_buffer) void;
pub extern fn sg_fail_image(img: sg_image) void;
pub extern fn sg_fail_sampler(smp: sg_sampler) void;
pub extern fn sg_fail_shader(shd: sg_shader) void;
pub extern fn sg_fail_pipeline(pip: sg_pipeline) void;
pub extern fn sg_fail_attachments(atts: sg_attachments) void;
pub extern fn sg_enable_frame_stats() void;
pub extern fn sg_disable_frame_stats() void;
pub extern fn sg_frame_stats_enabled() bool;
pub extern fn sg_query_frame_stats() sg_frame_stats;
pub const struct_sg_d3d11_buffer_info = extern struct {
    buf: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
};
pub const sg_d3d11_buffer_info = struct_sg_d3d11_buffer_info;
pub const struct_sg_d3d11_image_info = extern struct {
    tex2d: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    tex3d: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    res: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    srv: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
};
pub const sg_d3d11_image_info = struct_sg_d3d11_image_info;
pub const struct_sg_d3d11_sampler_info = extern struct {
    smp: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
};
pub const sg_d3d11_sampler_info = struct_sg_d3d11_sampler_info;
pub const struct_sg_d3d11_shader_info = extern struct {
    vs_cbufs: [4]?*const anyopaque = @import("std").mem.zeroes([4]?*const anyopaque),
    fs_cbufs: [4]?*const anyopaque = @import("std").mem.zeroes([4]?*const anyopaque),
    vs: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    fs: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
};
pub const sg_d3d11_shader_info = struct_sg_d3d11_shader_info;
pub const struct_sg_d3d11_pipeline_info = extern struct {
    il: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    rs: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    dss: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    bs: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
};
pub const sg_d3d11_pipeline_info = struct_sg_d3d11_pipeline_info;
pub const struct_sg_d3d11_attachments_info = extern struct {
    color_rtv: [4]?*const anyopaque = @import("std").mem.zeroes([4]?*const anyopaque),
    resolve_rtv: [4]?*const anyopaque = @import("std").mem.zeroes([4]?*const anyopaque),
    dsv: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
};
pub const sg_d3d11_attachments_info = struct_sg_d3d11_attachments_info;
pub const struct_sg_mtl_buffer_info = extern struct {
    buf: [2]?*const anyopaque = @import("std").mem.zeroes([2]?*const anyopaque),
    active_slot: c_int = @import("std").mem.zeroes(c_int),
};
pub const sg_mtl_buffer_info = struct_sg_mtl_buffer_info;
pub const struct_sg_mtl_image_info = extern struct {
    tex: [2]?*const anyopaque = @import("std").mem.zeroes([2]?*const anyopaque),
    active_slot: c_int = @import("std").mem.zeroes(c_int),
};
pub const sg_mtl_image_info = struct_sg_mtl_image_info;
pub const struct_sg_mtl_sampler_info = extern struct {
    smp: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
};
pub const sg_mtl_sampler_info = struct_sg_mtl_sampler_info;
pub const struct_sg_mtl_shader_info = extern struct {
    vs_lib: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    fs_lib: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    vs_func: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    fs_func: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
};
pub const sg_mtl_shader_info = struct_sg_mtl_shader_info;
pub const struct_sg_mtl_pipeline_info = extern struct {
    rps: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    dss: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
};
pub const sg_mtl_pipeline_info = struct_sg_mtl_pipeline_info;
pub const struct_sg_wgpu_buffer_info = extern struct {
    buf: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
};
pub const sg_wgpu_buffer_info = struct_sg_wgpu_buffer_info;
pub const struct_sg_wgpu_image_info = extern struct {
    tex: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    view: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
};
pub const sg_wgpu_image_info = struct_sg_wgpu_image_info;
pub const struct_sg_wgpu_sampler_info = extern struct {
    smp: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
};
pub const sg_wgpu_sampler_info = struct_sg_wgpu_sampler_info;
pub const struct_sg_wgpu_shader_info = extern struct {
    vs_mod: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    fs_mod: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    bgl: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
};
pub const sg_wgpu_shader_info = struct_sg_wgpu_shader_info;
pub const struct_sg_wgpu_pipeline_info = extern struct {
    pip: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
};
pub const sg_wgpu_pipeline_info = struct_sg_wgpu_pipeline_info;
pub const struct_sg_wgpu_attachments_info = extern struct {
    color_view: [4]?*const anyopaque = @import("std").mem.zeroes([4]?*const anyopaque),
    resolve_view: [4]?*const anyopaque = @import("std").mem.zeroes([4]?*const anyopaque),
    ds_view: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
};
pub const sg_wgpu_attachments_info = struct_sg_wgpu_attachments_info;
pub const struct_sg_gl_buffer_info = extern struct {
    buf: [2]u32 = @import("std").mem.zeroes([2]u32),
    active_slot: c_int = @import("std").mem.zeroes(c_int),
};
pub const sg_gl_buffer_info = struct_sg_gl_buffer_info;
pub const struct_sg_gl_image_info = extern struct {
    tex: [2]u32 = @import("std").mem.zeroes([2]u32),
    tex_target: u32 = @import("std").mem.zeroes(u32),
    msaa_render_buffer: u32 = @import("std").mem.zeroes(u32),
    active_slot: c_int = @import("std").mem.zeroes(c_int),
};
pub const sg_gl_image_info = struct_sg_gl_image_info;
pub const struct_sg_gl_sampler_info = extern struct {
    smp: u32 = @import("std").mem.zeroes(u32),
};
pub const sg_gl_sampler_info = struct_sg_gl_sampler_info;
pub const struct_sg_gl_shader_info = extern struct {
    prog: u32 = @import("std").mem.zeroes(u32),
};
pub const sg_gl_shader_info = struct_sg_gl_shader_info;
pub const struct_sg_gl_attachments_info = extern struct {
    framebuffer: u32 = @import("std").mem.zeroes(u32),
    msaa_resolve_framebuffer: [4]u32 = @import("std").mem.zeroes([4]u32),
};
pub const sg_gl_attachments_info = struct_sg_gl_attachments_info;
pub extern fn sg_d3d11_device() ?*const anyopaque;
pub extern fn sg_d3d11_device_context() ?*const anyopaque;
pub extern fn sg_d3d11_query_buffer_info(buf: sg_buffer) sg_d3d11_buffer_info;
pub extern fn sg_d3d11_query_image_info(img: sg_image) sg_d3d11_image_info;
pub extern fn sg_d3d11_query_sampler_info(smp: sg_sampler) sg_d3d11_sampler_info;
pub extern fn sg_d3d11_query_shader_info(shd: sg_shader) sg_d3d11_shader_info;
pub extern fn sg_d3d11_query_pipeline_info(pip: sg_pipeline) sg_d3d11_pipeline_info;
pub extern fn sg_d3d11_query_attachments_info(atts: sg_attachments) sg_d3d11_attachments_info;
pub extern fn sg_mtl_device() ?*const anyopaque;
pub extern fn sg_mtl_render_command_encoder() ?*const anyopaque;
pub extern fn sg_mtl_query_buffer_info(buf: sg_buffer) sg_mtl_buffer_info;
pub extern fn sg_mtl_query_image_info(img: sg_image) sg_mtl_image_info;
pub extern fn sg_mtl_query_sampler_info(smp: sg_sampler) sg_mtl_sampler_info;
pub extern fn sg_mtl_query_shader_info(shd: sg_shader) sg_mtl_shader_info;
pub extern fn sg_mtl_query_pipeline_info(pip: sg_pipeline) sg_mtl_pipeline_info;
pub extern fn sg_wgpu_device() ?*const anyopaque;
pub extern fn sg_wgpu_queue() ?*const anyopaque;
pub extern fn sg_wgpu_command_encoder() ?*const anyopaque;
pub extern fn sg_wgpu_render_pass_encoder() ?*const anyopaque;
pub extern fn sg_wgpu_query_buffer_info(buf: sg_buffer) sg_wgpu_buffer_info;
pub extern fn sg_wgpu_query_image_info(img: sg_image) sg_wgpu_image_info;
pub extern fn sg_wgpu_query_sampler_info(smp: sg_sampler) sg_wgpu_sampler_info;
pub extern fn sg_wgpu_query_shader_info(shd: sg_shader) sg_wgpu_shader_info;
pub extern fn sg_wgpu_query_pipeline_info(pip: sg_pipeline) sg_wgpu_pipeline_info;
pub extern fn sg_wgpu_query_attachments_info(atts: sg_attachments) sg_wgpu_attachments_info;
pub extern fn sg_gl_query_buffer_info(buf: sg_buffer) sg_gl_buffer_info;
pub extern fn sg_gl_query_image_info(img: sg_image) sg_gl_image_info;
pub extern fn sg_gl_query_sampler_info(smp: sg_sampler) sg_gl_sampler_info;
pub extern fn sg_gl_query_shader_info(shd: sg_shader) sg_gl_shader_info;
pub extern fn sg_gl_query_attachments_info(atts: sg_attachments) sg_gl_attachments_info;
pub const SGP_NO_ERROR: c_int = 0;
pub const SGP_ERROR_SOKOL_INVALID: c_int = 1;
pub const SGP_ERROR_VERTICES_FULL: c_int = 2;
pub const SGP_ERROR_UNIFORMS_FULL: c_int = 3;
pub const SGP_ERROR_COMMANDS_FULL: c_int = 4;
pub const SGP_ERROR_VERTICES_OVERFLOW: c_int = 5;
pub const SGP_ERROR_TRANSFORM_STACK_OVERFLOW: c_int = 6;
pub const SGP_ERROR_TRANSFORM_STACK_UNDERFLOW: c_int = 7;
pub const SGP_ERROR_STATE_STACK_OVERFLOW: c_int = 8;
pub const SGP_ERROR_STATE_STACK_UNDERFLOW: c_int = 9;
pub const SGP_ERROR_ALLOC_FAILED: c_int = 10;
pub const SGP_ERROR_MAKE_VERTEX_BUFFER_FAILED: c_int = 11;
pub const SGP_ERROR_MAKE_WHITE_IMAGE_FAILED: c_int = 12;
pub const SGP_ERROR_MAKE_NEAREST_SAMPLER_FAILED: c_int = 13;
pub const SGP_ERROR_MAKE_COMMON_SHADER_FAILED: c_int = 14;
pub const SGP_ERROR_MAKE_COMMON_PIPELINE_FAILED: c_int = 15;
pub const enum_sgp_error = c_uint;
pub const sgp_error = enum_sgp_error;
pub const SGP_BLENDMODE_NONE: c_int = 0;
pub const SGP_BLENDMODE_BLEND: c_int = 1;
pub const SGP_BLENDMODE_ADD: c_int = 2;
pub const SGP_BLENDMODE_MOD: c_int = 3;
pub const SGP_BLENDMODE_MUL: c_int = 4;
pub const _SGP_BLENDMODE_NUM: c_int = 5;
pub const enum_sgp_blend_mode = c_uint;
pub const sgp_blend_mode = enum_sgp_blend_mode;
pub const SGP_VS_ATTR_COORD: c_int = 0;
pub const SGP_VS_ATTR_COLOR: c_int = 1;
pub const enum_sgp_vs_attr_location = c_uint;
pub const sgp_vs_attr_location = enum_sgp_vs_attr_location;
pub const struct_sgp_isize = extern struct {
    w: c_int = @import("std").mem.zeroes(c_int),
    h: c_int = @import("std").mem.zeroes(c_int),
};
pub const sgp_isize = struct_sgp_isize;
pub const struct_sgp_irect = extern struct {
    x: c_int = @import("std").mem.zeroes(c_int),
    y: c_int = @import("std").mem.zeroes(c_int),
    w: c_int = @import("std").mem.zeroes(c_int),
    h: c_int = @import("std").mem.zeroes(c_int),
};
pub const sgp_irect = struct_sgp_irect;
pub const struct_sgp_rect = extern struct {
    x: f32 = @import("std").mem.zeroes(f32),
    y: f32 = @import("std").mem.zeroes(f32),
    w: f32 = @import("std").mem.zeroes(f32),
    h: f32 = @import("std").mem.zeroes(f32),
};
pub const sgp_rect = struct_sgp_rect;
pub const struct_sgp_textured_rect = extern struct {
    dst: sgp_rect = @import("std").mem.zeroes(sgp_rect),
    src: sgp_rect = @import("std").mem.zeroes(sgp_rect),
};
pub const sgp_textured_rect = struct_sgp_textured_rect;
pub const struct_sgp_vec2 = extern struct {
    x: f32 = @import("std").mem.zeroes(f32),
    y: f32 = @import("std").mem.zeroes(f32),
};
pub const sgp_vec2 = struct_sgp_vec2;
pub const sgp_point = sgp_vec2;
pub const struct_sgp_line = extern struct {
    a: sgp_point = @import("std").mem.zeroes(sgp_point),
    b: sgp_point = @import("std").mem.zeroes(sgp_point),
};
pub const sgp_line = struct_sgp_line;
pub const struct_sgp_triangle = extern struct {
    a: sgp_point = @import("std").mem.zeroes(sgp_point),
    b: sgp_point = @import("std").mem.zeroes(sgp_point),
    c: sgp_point = @import("std").mem.zeroes(sgp_point),
};
pub const sgp_triangle = struct_sgp_triangle;
pub const struct_sgp_mat2x3 = extern struct {
    v: [2][3]f32 = @import("std").mem.zeroes([2][3]f32),
};
pub const sgp_mat2x3 = struct_sgp_mat2x3;
pub const struct_sgp_color = extern struct {
    r: f32 = @import("std").mem.zeroes(f32),
    g: f32 = @import("std").mem.zeroes(f32),
    b: f32 = @import("std").mem.zeroes(f32),
    a: f32 = @import("std").mem.zeroes(f32),
};
pub const sgp_color = struct_sgp_color;
pub const struct_sgp_color_ub4 = extern struct {
    r: u8 = @import("std").mem.zeroes(u8),
    g: u8 = @import("std").mem.zeroes(u8),
    b: u8 = @import("std").mem.zeroes(u8),
    a: u8 = @import("std").mem.zeroes(u8),
};
pub const sgp_color_ub4 = struct_sgp_color_ub4;
pub const struct_sgp_vertex = extern struct {
    position: sgp_vec2 = @import("std").mem.zeroes(sgp_vec2),
    texcoord: sgp_vec2 = @import("std").mem.zeroes(sgp_vec2),
    color: sgp_color_ub4 = @import("std").mem.zeroes(sgp_color_ub4),
};
pub const sgp_vertex = struct_sgp_vertex;
pub const struct_sgp_uniform = extern struct {
    size: u32 = @import("std").mem.zeroes(u32),
    content: [4]f32 = @import("std").mem.zeroes([4]f32),
};
pub const sgp_uniform = struct_sgp_uniform;
pub const struct_sgp_textures_uniform = extern struct {
    count: u32 = @import("std").mem.zeroes(u32),
    images: [4]sg_image = @import("std").mem.zeroes([4]sg_image),
    samplers: [4]sg_sampler = @import("std").mem.zeroes([4]sg_sampler),
};
pub const sgp_textures_uniform = struct_sgp_textures_uniform;
pub const struct_sgp_state = extern struct {
    frame_size: sgp_isize = @import("std").mem.zeroes(sgp_isize),
    viewport: sgp_irect = @import("std").mem.zeroes(sgp_irect),
    scissor: sgp_irect = @import("std").mem.zeroes(sgp_irect),
    proj: sgp_mat2x3 = @import("std").mem.zeroes(sgp_mat2x3),
    transform: sgp_mat2x3 = @import("std").mem.zeroes(sgp_mat2x3),
    mvp: sgp_mat2x3 = @import("std").mem.zeroes(sgp_mat2x3),
    thickness: f32 = @import("std").mem.zeroes(f32),
    color: sgp_color_ub4 = @import("std").mem.zeroes(sgp_color_ub4),
    textures: sgp_textures_uniform = @import("std").mem.zeroes(sgp_textures_uniform),
    uniform: sgp_uniform = @import("std").mem.zeroes(sgp_uniform),
    blend_mode: sgp_blend_mode = @import("std").mem.zeroes(sgp_blend_mode),
    pipeline: sg_pipeline = @import("std").mem.zeroes(sg_pipeline),
    _base_vertex: u32 = @import("std").mem.zeroes(u32),
    _base_uniform: u32 = @import("std").mem.zeroes(u32),
    _base_command: u32 = @import("std").mem.zeroes(u32),
};
pub const sgp_state = struct_sgp_state;
pub const struct_sgp_desc = extern struct {
    max_vertices: u32 = @import("std").mem.zeroes(u32),
    max_commands: u32 = @import("std").mem.zeroes(u32),
    color_format: sg_pixel_format = @import("std").mem.zeroes(sg_pixel_format),
    depth_format: sg_pixel_format = @import("std").mem.zeroes(sg_pixel_format),
    sample_count: c_int = @import("std").mem.zeroes(c_int),
};
pub const sgp_desc = struct_sgp_desc;
pub const struct_sgp_pipeline_desc = extern struct {
    shader: sg_shader = @import("std").mem.zeroes(sg_shader),
    primitive_type: sg_primitive_type = @import("std").mem.zeroes(sg_primitive_type),
    blend_mode: sgp_blend_mode = @import("std").mem.zeroes(sgp_blend_mode),
    color_format: sg_pixel_format = @import("std").mem.zeroes(sg_pixel_format),
    depth_format: sg_pixel_format = @import("std").mem.zeroes(sg_pixel_format),
    sample_count: c_int = @import("std").mem.zeroes(c_int),
    has_vs_color: bool = @import("std").mem.zeroes(bool),
};
pub const sgp_pipeline_desc = struct_sgp_pipeline_desc;
pub extern fn sgp_setup(desc: [*c]const sgp_desc) void;
pub extern fn sgp_shutdown() void;
pub extern fn sgp_is_valid() bool;
pub extern fn sgp_get_last_error() sgp_error;
pub extern fn sgp_get_error_message(@"error": sgp_error) [*c]const u8;
pub extern fn sgp_make_pipeline(desc: [*c]const sgp_pipeline_desc) sg_pipeline;
pub extern fn sgp_begin(width: c_int, height: c_int) void;
pub extern fn sgp_flush() void;
pub extern fn sgp_end() void;
pub extern fn sgp_project(left: f32, right: f32, top: f32, bottom: f32) void;
pub extern fn sgp_reset_project() void;
pub extern fn sgp_push_transform() void;
pub extern fn sgp_pop_transform() void;
pub extern fn sgp_reset_transform() void;
pub extern fn sgp_translate(x: f32, y: f32) void;
pub extern fn sgp_rotate(theta: f32) void;
pub extern fn sgp_rotate_at(theta: f32, x: f32, y: f32) void;
pub extern fn sgp_scale(sx: f32, sy: f32) void;
pub extern fn sgp_scale_at(sx: f32, sy: f32, x: f32, y: f32) void;
pub extern fn sgp_set_pipeline(pipeline: sg_pipeline) void;
pub extern fn sgp_reset_pipeline() void;
pub extern fn sgp_set_uniform(data: ?*const anyopaque, size: u32) void;
pub extern fn sgp_reset_uniform() void;
pub extern fn sgp_set_blend_mode(blend_mode: sgp_blend_mode) void;
pub extern fn sgp_reset_blend_mode() void;
pub extern fn sgp_set_color(r: f32, g: f32, b: f32, a: f32) void;
pub extern fn sgp_reset_color() void;
pub extern fn sgp_set_image(channel: c_int, image: sg_image) void;
pub extern fn sgp_unset_image(channel: c_int) void;
pub extern fn sgp_reset_image(channel: c_int) void;
pub extern fn sgp_set_sampler(channel: c_int, sampler: sg_sampler) void;
pub extern fn sgp_reset_sampler(channel: c_int) void;
pub extern fn sgp_viewport(x: c_int, y: c_int, w: c_int, h: c_int) void;
pub extern fn sgp_reset_viewport() void;
pub extern fn sgp_scissor(x: c_int, y: c_int, w: c_int, h: c_int) void;
pub extern fn sgp_reset_scissor() void;
pub extern fn sgp_reset_state() void;
pub extern fn sgp_clear() void;
pub extern fn sgp_draw(primitive_type: sg_primitive_type, vertices: [*c]const sgp_vertex, count: u32) void;
pub extern fn sgp_draw_points(points: [*c]const sgp_point, count: u32) void;
pub extern fn sgp_draw_point(x: f32, y: f32) void;
pub extern fn sgp_draw_lines(lines: [*c]const sgp_line, count: u32) void;
pub extern fn sgp_draw_line(ax: f32, ay: f32, bx: f32, by: f32) void;
pub extern fn sgp_draw_lines_strip(points: [*c]const sgp_point, count: u32) void;
pub extern fn sgp_draw_filled_triangles(triangles: [*c]const sgp_triangle, count: u32) void;
pub extern fn sgp_draw_filled_triangle(ax: f32, ay: f32, bx: f32, by: f32, cx: f32, cy: f32) void;
pub extern fn sgp_draw_filled_triangles_strip(points: [*c]const sgp_point, count: u32) void;
pub extern fn sgp_draw_filled_rects(rects: [*c]const sgp_rect, count: u32) void;
pub extern fn sgp_draw_filled_rect(x: f32, y: f32, w: f32, h: f32) void;
pub extern fn sgp_draw_textured_rects(channel: c_int, rects: [*c]const sgp_textured_rect, count: u32) void;
pub extern fn sgp_draw_textured_rect(channel: c_int, dest_rect: sgp_rect, src_rect: sgp_rect) void;
pub extern fn sgp_query_state() [*c]sgp_state;
pub extern fn sgp_query_desc() sgp_desc;
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 19);
pub const __clang_minor__ = @as(c_int, 1);
pub const __clang_patchlevel__ = @as(c_int, 0);
pub const __clang_version__ = "19.1.0 (https://github.com/ziglang/zig-bootstrap 46b9e66db90230fe62404b27b85a378ccf2c82c2)";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __MEMORY_SCOPE_SYSTEM = @as(c_int, 0);
pub const __MEMORY_SCOPE_DEVICE = @as(c_int, 1);
pub const __MEMORY_SCOPE_WRKGRP = @as(c_int, 2);
pub const __MEMORY_SCOPE_WVFRNT = @as(c_int, 3);
pub const __MEMORY_SCOPE_SINGLE = @as(c_int, 4);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __FPCLASS_SNAN = @as(c_int, 0x0001);
pub const __FPCLASS_QNAN = @as(c_int, 0x0002);
pub const __FPCLASS_NEGINF = @as(c_int, 0x0004);
pub const __FPCLASS_NEGNORMAL = @as(c_int, 0x0008);
pub const __FPCLASS_NEGSUBNORMAL = @as(c_int, 0x0010);
pub const __FPCLASS_NEGZERO = @as(c_int, 0x0020);
pub const __FPCLASS_POSZERO = @as(c_int, 0x0040);
pub const __FPCLASS_POSSUBNORMAL = @as(c_int, 0x0080);
pub const __FPCLASS_POSNORMAL = @as(c_int, 0x0100);
pub const __FPCLASS_POSINF = @as(c_int, 0x0200);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 19.1.0 (https://github.com/ziglang/zig-bootstrap 46b9e66db90230fe62404b27b85a378ccf2c82c2)";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 1);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __block = @compileError("unable to translate macro: undefined identifier `__blocks__`");
// (no file):42:9
pub const __BLOCKS__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-32";
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 8);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_WIDTH__ = @as(c_int, 64);
pub const __LLONG_WIDTH__ = @as(c_int, 64);
pub const __BITINT_MAXWIDTH__ = @as(c_int, 128);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __INTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_FMTd__ = "ld";
pub const __INTMAX_FMTi__ = "li";
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`");
// (no file):97:9
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_FMTo__ = "lo";
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINTMAX_FMTX__ = "lX";
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`");
// (no file):103:9
pub const __PTRDIFF_TYPE__ = c_long;
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __INTPTR_TYPE__ = c_long;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __SIZE_TYPE__ = c_ulong;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __WCHAR_TYPE__ = c_int;
pub const __WINT_TYPE__ = c_int;
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __FLT16_DENORM_MIN__ = @as(f16, 5.9604644775390625e-8);
pub const __FLT16_NORM_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_EPSILON__ = @as(f16, 9.765625e-4);
pub const __FLT16_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT16_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT16_MIN__ = @as(f16, 6.103515625e-5);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_NORM_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_NORM_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 4.9406564584124654e-324);
pub const __LDBL_NORM_MAX__ = @as(c_longdouble, 1.7976931348623157e+308);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 15);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 2.2204460492503131e-16);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 53);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __LDBL_MAX_EXP__ = @as(c_int, 1024);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.7976931348623157e+308);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __LDBL_MIN__ = @as(c_longdouble, 2.2250738585072014e-308);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 8);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub const __INT64_TYPE__ = c_longlong;
pub const __INT64_FMTd__ = "lld";
pub const __INT64_FMTi__ = "lli";
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `LL`");
// (no file):203:9
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`");
// (no file):225:9
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulonglong;
pub const __UINT64_FMTo__ = "llo";
pub const __UINT64_FMTu__ = "llu";
pub const __UINT64_FMTx__ = "llx";
pub const __UINT64_FMTX__ = "llX";
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `ULL`");
// (no file):233:9
pub const __UINT64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __INT64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_longlong;
pub const __INT_LEAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_LEAST64_FMTd__ = "lld";
pub const __INT_LEAST64_FMTi__ = "lli";
pub const __UINT_LEAST64_TYPE__ = c_ulonglong;
pub const __UINT_LEAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_LEAST64_FMTo__ = "llo";
pub const __UINT_LEAST64_FMTu__ = "llu";
pub const __UINT_LEAST64_FMTx__ = "llx";
pub const __UINT_LEAST64_FMTX__ = "llX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_longlong;
pub const __INT_FAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_FAST64_FMTd__ = "lld";
pub const __INT_FAST64_FMTi__ = "lli";
pub const __UINT_FAST64_TYPE__ = c_ulonglong;
pub const __UINT_FAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_FAST64_FMTo__ = "llo";
pub const __UINT_FAST64_FMTu__ = "llu";
pub const __UINT_FAST64_FMTx__ = "llx";
pub const __UINT_FAST64_FMTX__ = "llX";
pub const __USER_LABEL_PREFIX__ = @compileError("unable to translate macro: undefined identifier `_`");
// (no file):324:9
pub const __NO_MATH_ERRNO__ = @as(c_int, 1);
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __GCC_DESTRUCTIVE_SIZE = @as(c_int, 64);
pub const __GCC_CONSTRUCTIVE_SIZE = @as(c_int, 64);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __NO_INLINE__ = @as(c_int, 1);
pub const __PIC__ = @as(c_int, 2);
pub const __pic__ = @as(c_int, 2);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __SSP_STRONG__ = @as(c_int, 2);
pub const __nonnull = @compileError("unable to translate macro: undefined identifier `_Nonnull`");
// (no file):359:9
pub const __null_unspecified = @compileError("unable to translate macro: undefined identifier `_Null_unspecified`");
// (no file):360:9
pub const __nullable = @compileError("unable to translate macro: undefined identifier `_Nullable`");
// (no file):361:9
pub const TARGET_OS_WIN32 = @as(c_int, 0);
pub const TARGET_OS_WINDOWS = @as(c_int, 0);
pub const TARGET_OS_LINUX = @as(c_int, 0);
pub const TARGET_OS_UNIX = @as(c_int, 0);
pub const TARGET_OS_MAC = @as(c_int, 1);
pub const TARGET_OS_OSX = @as(c_int, 1);
pub const TARGET_OS_IPHONE = @as(c_int, 0);
pub const TARGET_OS_IOS = @as(c_int, 0);
pub const TARGET_OS_TV = @as(c_int, 0);
pub const TARGET_OS_WATCH = @as(c_int, 0);
pub const TARGET_OS_VISION = @as(c_int, 0);
pub const TARGET_OS_DRIVERKIT = @as(c_int, 0);
pub const TARGET_OS_MACCATALYST = @as(c_int, 0);
pub const TARGET_OS_SIMULATOR = @as(c_int, 0);
pub const TARGET_OS_EMBEDDED = @as(c_int, 0);
pub const TARGET_OS_NANO = @as(c_int, 0);
pub const TARGET_IPHONE_SIMULATOR = @as(c_int, 0);
pub const TARGET_OS_UIKITFORMAC = @as(c_int, 0);
pub const __AARCH64EL__ = @as(c_int, 1);
pub const __aarch64__ = @as(c_int, 1);
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __AARCH64_CMODEL_SMALL__ = @as(c_int, 1);
pub const __ARM_ACLE = @as(c_int, 200);
pub const __ARM_ARCH = @as(c_int, 8);
pub const __ARM_ARCH_PROFILE = 'A';
pub const __ARM_64BIT_STATE = @as(c_int, 1);
pub const __ARM_PCS_AAPCS64 = @as(c_int, 1);
pub const __ARM_ARCH_ISA_A64 = @as(c_int, 1);
pub const __ARM_FEATURE_CLZ = @as(c_int, 1);
pub const __ARM_FEATURE_FMA = @as(c_int, 1);
pub const __ARM_FEATURE_LDREX = @as(c_int, 0xF);
pub const __ARM_FEATURE_IDIV = @as(c_int, 1);
pub const __ARM_FEATURE_DIV = @as(c_int, 1);
pub const __ARM_FEATURE_NUMERIC_MAXMIN = @as(c_int, 1);
pub const __ARM_FEATURE_DIRECTED_ROUNDING = @as(c_int, 1);
pub const __ARM_ALIGN_MAX_STACK_PWR = @as(c_int, 4);
pub const __ARM_STATE_ZA = @as(c_int, 1);
pub const __ARM_STATE_ZT0 = @as(c_int, 1);
pub const __ARM_FP = @as(c_int, 0xE);
pub const __ARM_FP16_FORMAT_IEEE = @as(c_int, 1);
pub const __ARM_FP16_ARGS = @as(c_int, 1);
pub const __ARM_SIZEOF_WCHAR_T = @as(c_int, 4);
pub const __ARM_SIZEOF_MINIMAL_ENUM = @as(c_int, 4);
pub const __ARM_NEON = @as(c_int, 1);
pub const __ARM_NEON_FP = @as(c_int, 0xE);
pub const __ARM_FEATURE_CRC32 = @as(c_int, 1);
pub const __ARM_FEATURE_RCPC = @as(c_int, 1);
pub const __ARM_FEATURE_CRYPTO = @as(c_int, 1);
pub const __ARM_FEATURE_AES = @as(c_int, 1);
pub const __ARM_FEATURE_SHA2 = @as(c_int, 1);
pub const __ARM_FEATURE_SHA3 = @as(c_int, 1);
pub const __ARM_FEATURE_SHA512 = @as(c_int, 1);
pub const __ARM_FEATURE_PAUTH = @as(c_int, 1);
pub const __ARM_FEATURE_BTI = @as(c_int, 1);
pub const __ARM_FEATURE_UNALIGNED = @as(c_int, 1);
pub const __ARM_FEATURE_FP16_VECTOR_ARITHMETIC = @as(c_int, 1);
pub const __ARM_FEATURE_FP16_SCALAR_ARITHMETIC = @as(c_int, 1);
pub const __ARM_FEATURE_DOTPROD = @as(c_int, 1);
pub const __ARM_FEATURE_MATMUL_INT8 = @as(c_int, 1);
pub const __ARM_FEATURE_ATOMICS = @as(c_int, 1);
pub const __ARM_FEATURE_BF16 = @as(c_int, 1);
pub const __ARM_FEATURE_BF16_VECTOR_ARITHMETIC = @as(c_int, 1);
pub const __ARM_BF16_FORMAT_ALTERNATIVE = @as(c_int, 1);
pub const __ARM_FEATURE_BF16_SCALAR_ARITHMETIC = @as(c_int, 1);
pub const __ARM_FEATURE_FP16_FML = @as(c_int, 1);
pub const __ARM_FEATURE_FRINT = @as(c_int, 1);
pub const __ARM_FEATURE_COMPLEX = @as(c_int, 1);
pub const __ARM_FEATURE_JCVT = @as(c_int, 1);
pub const __ARM_FEATURE_QRDMX = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);
pub const __FP_FAST_FMA = @as(c_int, 1);
pub const __FP_FAST_FMAF = @as(c_int, 1);
pub const __AARCH64_SIMD__ = @as(c_int, 1);
pub const __ARM64_ARCH_8__ = @as(c_int, 1);
pub const __ARM_NEON__ = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __arm64 = @as(c_int, 1);
pub const __arm64__ = @as(c_int, 1);
pub const __APPLE_CC__ = @as(c_int, 6000);
pub const __APPLE__ = @as(c_int, 1);
pub const __STDC_NO_THREADS__ = @as(c_int, 1);
pub const __weak = @compileError("unable to translate macro: undefined identifier `objc_gc`");
// (no file):447:9
pub const __strong = "";
pub const __unsafe_unretained = "";
pub const __DYNAMIC__ = @as(c_int, 1);
pub const __ENVIRONMENT_MAC_OS_X_VERSION_MIN_REQUIRED__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140601, .decimal);
pub const __ENVIRONMENT_OS_VERSION_MIN_REQUIRED__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140601, .decimal);
pub const __MACH__ = @as(c_int, 1);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const __STDC_EMBED_NOT_FOUND__ = @as(c_int, 0);
pub const __STDC_EMBED_FOUND__ = @as(c_int, 1);
pub const __STDC_EMBED_EMPTY__ = @as(c_int, 2);
pub const _DEBUG = @as(c_int, 1);
pub const __GCC_HAVE_DWARF2_CFI_ASM = @as(c_int, 1);
pub const SOKOL_GP_INCLUDED = @as(c_int, 1);
pub const SOKOL_GFX_INCLUDED = @as(c_int, 1);
pub const __need_ptrdiff_t = "";
pub const __need_size_t = "";
pub const __need_wchar_t = "";
pub const __need_NULL = "";
pub const __need_max_align_t = "";
pub const __need_offsetof = "";
pub const __STDDEF_H = "";
pub const _PTRDIFF_T = "";
pub const _SIZE_T = "";
pub const _WCHAR_T = "";
pub const NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const __CLANG_MAX_ALIGN_T_DEFINED = "";
pub const offsetof = @compileError("unable to translate C expr: unexpected token 'an identifier'");
// /Users/mg/zig/lib/include/__stddef_offsetof.h:16:9
pub const __CLANG_STDINT_H = "";
pub const _STDINT_H_ = "";
pub const __WORDSIZE = @as(c_int, 64);
pub const _INT8_T = "";
pub const _INT16_T = "";
pub const _INT32_T = "";
pub const _INT64_T = "";
pub const _UINT8_T = "";
pub const _UINT16_T = "";
pub const _UINT32_T = "";
pub const _UINT64_T = "";
pub const _SYS__TYPES_H_ = "";
pub const _CDEFS_H_ = "";
pub const __BEGIN_DECLS = "";
pub const __END_DECLS = "";
pub inline fn __has_cpp_attribute(x: anytype) @TypeOf(@as(c_int, 0)) {
    _ = &x;
    return @as(c_int, 0);
}
pub inline fn __P(protos: anytype) @TypeOf(protos) {
    _ = &protos;
    return protos;
}
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token '##'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:116:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token '#'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:117:9
pub const __const = @compileError("unable to translate C expr: unexpected token 'const'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:119:9
pub const __signed = c_int;
pub const __volatile = @compileError("unable to translate C expr: unexpected token 'volatile'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:121:9
pub const __dead2 = @compileError("unable to translate macro: undefined identifier `__noreturn__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:165:9
pub const __pure2 = @compileError("unable to translate C expr: unexpected token '__attribute__'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:166:9
pub const __stateful_pure = @compileError("unable to translate macro: undefined identifier `__pure__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:167:9
pub const __unused = @compileError("unable to translate macro: undefined identifier `__unused__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:172:9
pub const __used = @compileError("unable to translate macro: undefined identifier `__used__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:177:9
pub const __cold = @compileError("unable to translate macro: undefined identifier `__cold__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:183:9
pub const __returns_nonnull = @compileError("unable to translate macro: undefined identifier `returns_nonnull`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:190:9
pub const __exported = @compileError("unable to translate macro: undefined identifier `__visibility__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:200:9
pub const __exported_push = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:201:9
pub const __exported_pop = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:202:9
pub const __deprecated = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:214:9
pub const __deprecated_msg = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:218:10
pub inline fn __deprecated_enum_msg(_msg: anytype) @TypeOf(__deprecated_msg(_msg)) {
    _ = &_msg;
    return __deprecated_msg(_msg);
}
pub const __kpi_deprecated = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:229:9
pub const __unavailable = @compileError("unable to translate macro: undefined identifier `__unavailable__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:235:9
pub const __kpi_unavailable = "";
pub const __kpi_deprecated_arm64_macos_unavailable = "";
pub const __dead = "";
pub const __pure = "";
pub const __restrict = @compileError("unable to translate C expr: unexpected token 'restrict'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:257:9
pub const __disable_tail_calls = @compileError("unable to translate macro: undefined identifier `__disable_tail_calls__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:290:9
pub const __not_tail_called = @compileError("unable to translate macro: undefined identifier `__not_tail_called__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:302:9
pub const __result_use_check = @compileError("unable to translate macro: undefined identifier `__warn_unused_result__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:313:9
pub const __swift_unavailable = @compileError("unable to translate macro: undefined identifier `__availability__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:323:9
pub const __abortlike = __dead2 ++ __cold ++ __not_tail_called;
pub const __header_inline = @compileError("unable to translate C expr: unexpected token 'inline'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:357:10
pub const __header_always_inline = @compileError("unable to translate macro: undefined identifier `__always_inline__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:370:10
pub const __unreachable_ok_push = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:383:10
pub const __unreachable_ok_pop = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:386:10
pub const __printflike = @compileError("unable to translate macro: undefined identifier `__format__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:407:9
pub const __printf0like = @compileError("unable to translate macro: undefined identifier `__format__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:409:9
pub const __scanflike = @compileError("unable to translate macro: undefined identifier `__format__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:411:9
pub const __osloglike = @compileError("unable to translate macro: undefined identifier `__format__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:413:9
pub const __IDSTRING = @compileError("unable to translate C expr: unexpected token 'static'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:416:9
pub const __COPYRIGHT = @compileError("unable to translate macro: undefined identifier `copyright`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:419:9
pub const __RCSID = @compileError("unable to translate macro: undefined identifier `rcsid`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:423:9
pub const __SCCSID = @compileError("unable to translate macro: undefined identifier `sccsid`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:427:9
pub const __PROJECT_VERSION = @compileError("unable to translate macro: undefined identifier `project_version`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:431:9
pub const __FBSDID = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:436:9
pub const __DECONST = @compileError("unable to translate C expr: unexpected token 'const'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:440:9
pub const __DEVOLATILE = @compileError("unable to translate C expr: unexpected token 'volatile'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:444:9
pub const __DEQUALIFY = @compileError("unable to translate C expr: unexpected token 'const'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:448:9
pub const __alloc_align = @compileError("unable to translate macro: undefined identifier `alloc_align`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:457:9
pub const __alloc_size = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:478:9
pub const __has_safe_buffers = @as(c_int, 1);
pub const __unsafe_buffer_usage = @compileError("unable to translate macro: undefined identifier `__unsafe_buffer_usage__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:559:9
pub const __unsafe_buffer_usage_begin = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:565:9
pub const __unsafe_buffer_usage_end = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:566:9
pub const __DARWIN_ONLY_64_BIT_INO_T = @as(c_int, 1);
pub const __DARWIN_ONLY_UNIX_CONFORMANCE = @as(c_int, 1);
pub const __DARWIN_ONLY_VERS_1050 = @as(c_int, 1);
pub const __DARWIN_UNIX03 = @as(c_int, 1);
pub const __DARWIN_64_BIT_INO_T = @as(c_int, 1);
pub const __DARWIN_VERS_1050 = @as(c_int, 1);
pub const __DARWIN_NON_CANCELABLE = @as(c_int, 0);
pub const __DARWIN_SUF_UNIX03 = "";
pub const __DARWIN_SUF_64_BIT_INO_T = "";
pub const __DARWIN_SUF_1050 = "";
pub const __DARWIN_SUF_NON_CANCELABLE = "";
pub const __DARWIN_SUF_EXTSN = "$DARWIN_EXTSN";
pub const __DARWIN_ALIAS = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:751:9
pub const __DARWIN_ALIAS_C = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:752:9
pub const __DARWIN_ALIAS_I = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:753:9
pub const __DARWIN_NOCANCEL = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:754:9
pub const __DARWIN_INODE64 = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:755:9
pub const __DARWIN_1050 = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:757:9
pub const __DARWIN_1050ALIAS = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:758:9
pub const __DARWIN_1050ALIAS_C = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:759:9
pub const __DARWIN_1050ALIAS_I = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:760:9
pub const __DARWIN_1050INODE64 = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:761:9
pub const __DARWIN_EXTSN = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:763:9
pub const __DARWIN_EXTSN_C = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:764:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:35:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:41:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:47:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:53:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:59:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:65:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:71:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:77:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:83:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:89:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_5_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:95:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_5_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:101:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_6_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:107:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_6_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:113:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_7_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:119:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_7_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:125:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:131:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:137:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:143:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:149:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:155:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:161:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:167:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:173:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:179:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:185:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:191:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:197:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:203:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:209:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:215:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:221:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:227:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:233:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:239:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:245:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:251:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:257:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:263:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:269:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:275:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:281:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:287:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:293:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_5 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:299:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_6 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:305:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_7 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:311:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:317:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:323:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:329:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:335:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_5 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:341:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:347:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_6 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:359:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_7 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:365:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_8 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:371:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:377:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:383:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:389:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:395:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:401:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_5 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:407:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_6 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:413:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_7 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:419:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_8 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:425:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:431:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:437:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:443:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:449:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:455:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_5 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:461:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_6 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:467:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_7 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:473:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:479:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:485:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:491:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:497:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:503:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_5 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_symbol_aliasing.h:509:9
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_7(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_8(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_9(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_15(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_15_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_15_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_16(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_7(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub const __DARWIN_ALIAS_STARTING = @compileError("unable to translate macro: undefined identifier `__DARWIN_ALIAS_STARTING_MAC_`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:774:9
pub const ___POSIX_C_DEPRECATED_STARTING_198808L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199009L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199209L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199309L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199506L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_200112L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_200809L = "";
pub const __POSIX_C_DEPRECATED = @compileError("unable to translate macro: undefined identifier `___POSIX_C_DEPRECATED_STARTING_`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:837:9
pub const __DARWIN_C_ANSI = @as(c_long, 0o10000);
pub const __DARWIN_C_FULL = @as(c_long, 900000);
pub const __DARWIN_C_LEVEL = __DARWIN_C_FULL;
pub const __STDC_WANT_LIB_EXT1__ = @as(c_int, 1);
pub const __DARWIN_NO_LONG_LONG = @as(c_int, 0);
pub const _DARWIN_FEATURE_64_BIT_INODE = @as(c_int, 1);
pub const _DARWIN_FEATURE_ONLY_64_BIT_INODE = @as(c_int, 1);
pub const _DARWIN_FEATURE_ONLY_VERS_1050 = @as(c_int, 1);
pub const _DARWIN_FEATURE_ONLY_UNIX_CONFORMANCE = @as(c_int, 1);
pub const _DARWIN_FEATURE_UNIX_CONFORMANCE = @as(c_int, 3);
pub const __CAST_AWAY_QUALIFIER = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:935:9
pub const __XNU_PRIVATE_EXTERN = @compileError("unable to translate macro: undefined identifier `visibility`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:949:9
pub const __has_ptrcheck = @as(c_int, 0);
pub const __single = "";
pub const __unsafe_indexable = "";
pub const __counted_by = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:963:9
pub const __sized_by = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:964:9
pub const __ended_by = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:965:9
pub const __terminated_by = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:966:9
pub const __null_terminated = "";
pub const __ptrcheck_abi_assume_single = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:976:9
pub const __ptrcheck_abi_assume_unsafe_indexable = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:977:9
pub inline fn __unsafe_forge_bidi_indexable(T: anytype, P: anytype, S: anytype) @TypeOf(T(P)) {
    _ = &T;
    _ = &P;
    _ = &S;
    return T(P);
}
pub const __unsafe_forge_single = @import("std").zig.c_translation.Macros.CAST_OR_CALL;
pub inline fn __unsafe_forge_terminated_by(T: anytype, P: anytype, E: anytype) @TypeOf(T(P)) {
    _ = &T;
    _ = &P;
    _ = &E;
    return T(P);
}
pub const __unsafe_forge_null_terminated = @import("std").zig.c_translation.Macros.CAST_OR_CALL;
pub inline fn __terminated_by_to_indexable(P: anytype) @TypeOf(P) {
    _ = &P;
    return P;
}
pub inline fn __unsafe_terminated_by_to_indexable(P: anytype) @TypeOf(P) {
    _ = &P;
    return P;
}
pub inline fn __null_terminated_to_indexable(P: anytype) @TypeOf(P) {
    _ = &P;
    return P;
}
pub inline fn __unsafe_null_terminated_to_indexable(P: anytype) @TypeOf(P) {
    _ = &P;
    return P;
}
pub const __unsafe_terminated_by_from_indexable = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:988:9
pub const __unsafe_null_terminated_from_indexable = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:989:9
pub const __array_decay_dicards_count_in_parameters = "";
pub const __unsafe_late_const = "";
pub const __ptrcheck_unavailable = "";
pub const __ptrcheck_unavailable_r = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:998:9
pub const __ASSUME_PTR_ABI_SINGLE_BEGIN = __ptrcheck_abi_assume_single();
pub const __ASSUME_PTR_ABI_SINGLE_END = __ptrcheck_abi_assume_unsafe_indexable();
pub const __header_indexable = "";
pub const __header_bidi_indexable = "";
pub const __compiler_barrier = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:1027:9
pub const __enum_open = @compileError("unable to translate macro: undefined identifier `__enum_extensibility__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:1030:9
pub const __enum_closed = @compileError("unable to translate macro: undefined identifier `__enum_extensibility__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:1031:9
pub const __enum_options = @compileError("unable to translate macro: undefined identifier `__flag_enum__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:1038:9
pub const __enum_decl = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:1051:9
pub const __enum_closed_decl = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:1053:9
pub const __options_decl = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:1055:9
pub const __options_closed_decl = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/cdefs.h:1057:9
pub const __kernel_ptr_semantics = "";
pub const __kernel_data_semantics = "";
pub const __kernel_dual_semantics = "";
pub const _BSD_MACHINE__TYPES_H_ = "";
pub const _BSD_ARM__TYPES_H_ = "";
pub const __DARWIN_NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const _SYS__PTHREAD_TYPES_H_ = "";
pub const __PTHREAD_SIZE__ = @as(c_int, 8176);
pub const __PTHREAD_ATTR_SIZE__ = @as(c_int, 56);
pub const __PTHREAD_MUTEXATTR_SIZE__ = @as(c_int, 8);
pub const __PTHREAD_MUTEX_SIZE__ = @as(c_int, 56);
pub const __PTHREAD_CONDATTR_SIZE__ = @as(c_int, 8);
pub const __PTHREAD_COND_SIZE__ = @as(c_int, 40);
pub const __PTHREAD_ONCE_SIZE__ = @as(c_int, 8);
pub const __PTHREAD_RWLOCK_SIZE__ = @as(c_int, 192);
pub const __PTHREAD_RWLOCKATTR_SIZE__ = @as(c_int, 16);
pub const __offsetof = @compileError("unable to translate C expr: unexpected token 'an identifier'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/sys/_types.h:83:9
pub const _INTPTR_T = "";
pub const _BSD_MACHINE_TYPES_H_ = "";
pub const _ARM_MACHTYPES_H_ = "";
pub const _MACHTYPES_H_ = "";
pub const _U_INT8_T = "";
pub const _U_INT16_T = "";
pub const _U_INT32_T = "";
pub const _U_INT64_T = "";
pub const _UINTPTR_T = "";
pub const USER_ADDR_NULL = @import("std").zig.c_translation.cast(user_addr_t, @as(c_int, 0));
pub inline fn CAST_USER_ADDR_T(a_ptr: anytype) user_addr_t {
    _ = &a_ptr;
    return @import("std").zig.c_translation.cast(user_addr_t, @import("std").zig.c_translation.cast(usize, a_ptr));
}
pub const _INTMAX_T = "";
pub const _UINTMAX_T = "";
pub inline fn INT8_C(v: anytype) @TypeOf(v) {
    _ = &v;
    return v;
}
pub inline fn INT16_C(v: anytype) @TypeOf(v) {
    _ = &v;
    return v;
}
pub inline fn INT32_C(v: anytype) @TypeOf(v) {
    _ = &v;
    return v;
}
pub const INT64_C = @import("std").zig.c_translation.Macros.LL_SUFFIX;
pub inline fn UINT8_C(v: anytype) @TypeOf(v) {
    _ = &v;
    return v;
}
pub inline fn UINT16_C(v: anytype) @TypeOf(v) {
    _ = &v;
    return v;
}
pub const UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;
pub const UINT64_C = @import("std").zig.c_translation.Macros.ULL_SUFFIX;
pub const INTMAX_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const UINTMAX_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const INT8_MAX = @as(c_int, 127);
pub const INT16_MAX = @as(c_int, 32767);
pub const INT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT64_MAX = @as(c_longlong, 9223372036854775807);
pub const INT8_MIN = -@as(c_int, 128);
pub const INT16_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 32768, .decimal);
pub const INT32_MIN = -INT32_MAX - @as(c_int, 1);
pub const INT64_MIN = -INT64_MAX - @as(c_int, 1);
pub const UINT8_MAX = @as(c_int, 255);
pub const UINT16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT64_MAX = @as(c_ulonglong, 18446744073709551615);
pub const INT_LEAST8_MIN = INT8_MIN;
pub const INT_LEAST16_MIN = INT16_MIN;
pub const INT_LEAST32_MIN = INT32_MIN;
pub const INT_LEAST64_MIN = INT64_MIN;
pub const INT_LEAST8_MAX = INT8_MAX;
pub const INT_LEAST16_MAX = INT16_MAX;
pub const INT_LEAST32_MAX = INT32_MAX;
pub const INT_LEAST64_MAX = INT64_MAX;
pub const UINT_LEAST8_MAX = UINT8_MAX;
pub const UINT_LEAST16_MAX = UINT16_MAX;
pub const UINT_LEAST32_MAX = UINT32_MAX;
pub const UINT_LEAST64_MAX = UINT64_MAX;
pub const INT_FAST8_MIN = INT8_MIN;
pub const INT_FAST16_MIN = INT16_MIN;
pub const INT_FAST32_MIN = INT32_MIN;
pub const INT_FAST64_MIN = INT64_MIN;
pub const INT_FAST8_MAX = INT8_MAX;
pub const INT_FAST16_MAX = INT16_MAX;
pub const INT_FAST32_MAX = INT32_MAX;
pub const INT_FAST64_MAX = INT64_MAX;
pub const UINT_FAST8_MAX = UINT8_MAX;
pub const UINT_FAST16_MAX = UINT16_MAX;
pub const UINT_FAST32_MAX = UINT32_MAX;
pub const UINT_FAST64_MAX = UINT64_MAX;
pub const INTPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INTPTR_MIN = -INTPTR_MAX - @as(c_int, 1);
pub const UINTPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const INTMAX_MAX = INTMAX_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINTMAX_MAX = UINTMAX_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INTMAX_MIN = -INTMAX_MAX - @as(c_int, 1);
pub const PTRDIFF_MIN = INTMAX_MIN;
pub const PTRDIFF_MAX = INTMAX_MAX;
pub const SIZE_MAX = UINTPTR_MAX;
pub const RSIZE_MAX = SIZE_MAX >> @as(c_int, 1);
pub const WCHAR_MAX = __WCHAR_MAX__;
pub const WCHAR_MIN = -WCHAR_MAX - @as(c_int, 1);
pub const WINT_MIN = INT32_MIN;
pub const WINT_MAX = INT32_MAX;
pub const SIG_ATOMIC_MIN = INT32_MIN;
pub const SIG_ATOMIC_MAX = INT32_MAX;
pub const __STDBOOL_H = "";
pub const __bool_true_false_are_defined = @as(c_int, 1);
pub const @"bool" = bool;
pub const @"true" = @as(c_int, 1);
pub const @"false" = @as(c_int, 0);
pub const SOKOL_GFX_API_DECL = @compileError("unable to translate C expr: unexpected token 'extern'");
// /Users/mg/code/kyte/deps/sokol_gp_a6ce39f/../sokol_547f455/sokol_gfx.h:1576:9
pub inline fn SG_RANGE(x: anytype) sg_range {
    _ = &x;
    return @import("std").mem.zeroInit(sg_range, .{ &x, @import("std").zig.c_translation.sizeof(x) });
}
pub inline fn SG_RANGE_REF(x: anytype) @TypeOf(&@import("std").mem.zeroInit(sg_range, .{ &x, @import("std").zig.c_translation.sizeof(x) })) {
    _ = &x;
    return &@import("std").mem.zeroInit(sg_range, .{ &x, @import("std").zig.c_translation.sizeof(x) });
}
pub const _SG_LOG_ITEMS = @compileError("unable to translate macro: undefined identifier `OK`");
// /Users/mg/code/kyte/deps/sokol_gp_a6ce39f/../sokol_547f455/sokol_gfx.h:3524:9
pub const _SG_LOGITEM_XMACRO = @compileError("unable to translate macro: undefined identifier `SG_LOGITEM_`");
// /Users/mg/code/kyte/deps/sokol_gp_a6ce39f/../sokol_547f455/sokol_gfx.h:3825:9
pub const SGP_BATCH_OPTIMIZER_DEPTH = @as(c_int, 8);
pub const SGP_UNIFORM_CONTENT_SLOTS = @as(c_int, 4);
pub const SGP_TEXTURE_SLOTS = @as(c_int, 4);
pub const SOKOL_GP_API_DECL = @compileError("unable to translate C expr: unexpected token 'extern'");
// /Users/mg/code/kyte/deps/sokol_gp_a6ce39f/sokol_gp.h:397:9
pub const SOKOL_LOG = @compileError("unable to translate C expr: unexpected token ''");
// /Users/mg/code/kyte/deps/sokol_gp_a6ce39f/sokol_gp.h:406:17
pub const __darwin_pthread_handler_rec = struct___darwin_pthread_handler_rec;
pub const _opaque_pthread_attr_t = struct__opaque_pthread_attr_t;
pub const _opaque_pthread_cond_t = struct__opaque_pthread_cond_t;
pub const _opaque_pthread_condattr_t = struct__opaque_pthread_condattr_t;
pub const _opaque_pthread_mutex_t = struct__opaque_pthread_mutex_t;
pub const _opaque_pthread_mutexattr_t = struct__opaque_pthread_mutexattr_t;
pub const _opaque_pthread_once_t = struct__opaque_pthread_once_t;
pub const _opaque_pthread_rwlock_t = struct__opaque_pthread_rwlock_t;
pub const _opaque_pthread_rwlockattr_t = struct__opaque_pthread_rwlockattr_t;
pub const _opaque_pthread_t = struct__opaque_pthread_t;
