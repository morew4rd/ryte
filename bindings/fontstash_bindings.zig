pub const FONS_ZERO_TOPLEFT: c_int = 1;
pub const FONS_ZERO_BOTTOMLEFT: c_int = 2;
pub const enum_FONSflags = c_uint;
pub const FONS_ALIGN_LEFT: c_int = 1;
pub const FONS_ALIGN_CENTER: c_int = 2;
pub const FONS_ALIGN_RIGHT: c_int = 4;
pub const FONS_ALIGN_TOP: c_int = 8;
pub const FONS_ALIGN_MIDDLE: c_int = 16;
pub const FONS_ALIGN_BOTTOM: c_int = 32;
pub const FONS_ALIGN_BASELINE: c_int = 64;
pub const enum_FONSalign = c_uint;
pub const FONS_ATLAS_FULL: c_int = 1;
pub const FONS_SCRATCH_FULL: c_int = 2;
pub const FONS_STATES_OVERFLOW: c_int = 3;
pub const FONS_STATES_UNDERFLOW: c_int = 4;
pub const enum_FONSerrorCode = c_uint;
pub const struct_FONSparams = extern struct {
    width: c_int = @import("std").mem.zeroes(c_int),
    height: c_int = @import("std").mem.zeroes(c_int),
    flags: u8 = @import("std").mem.zeroes(u8),
    userPtr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    renderCreate: ?*const fn (?*anyopaque, c_int, c_int) callconv(.c) c_int = @import("std").mem.zeroes(?*const fn (?*anyopaque, c_int, c_int) callconv(.c) c_int),
    renderResize: ?*const fn (?*anyopaque, c_int, c_int) callconv(.c) c_int = @import("std").mem.zeroes(?*const fn (?*anyopaque, c_int, c_int) callconv(.c) c_int),
    renderUpdate: ?*const fn (?*anyopaque, [*c]c_int, [*c]const u8) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*anyopaque, [*c]c_int, [*c]const u8) callconv(.c) void),
    renderDraw: ?*const fn (?*anyopaque, [*c]const f32, [*c]const f32, [*c]const c_uint, c_int) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*anyopaque, [*c]const f32, [*c]const f32, [*c]const c_uint, c_int) callconv(.c) void),
    renderDelete: ?*const fn (?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.c) void),
};
pub const FONSparams = struct_FONSparams;
pub const struct_FONSquad = extern struct {
    x0: f32 = @import("std").mem.zeroes(f32),
    y0: f32 = @import("std").mem.zeroes(f32),
    s0: f32 = @import("std").mem.zeroes(f32),
    t0: f32 = @import("std").mem.zeroes(f32),
    x1: f32 = @import("std").mem.zeroes(f32),
    y1: f32 = @import("std").mem.zeroes(f32),
    s1: f32 = @import("std").mem.zeroes(f32),
    t1: f32 = @import("std").mem.zeroes(f32),
};
pub const FONSquad = struct_FONSquad;
pub const struct_FONSfont_1 = opaque {};
pub const struct_FONStextIter = extern struct {
    x: f32 = @import("std").mem.zeroes(f32),
    y: f32 = @import("std").mem.zeroes(f32),
    nextx: f32 = @import("std").mem.zeroes(f32),
    nexty: f32 = @import("std").mem.zeroes(f32),
    scale: f32 = @import("std").mem.zeroes(f32),
    spacing: f32 = @import("std").mem.zeroes(f32),
    codepoint: c_uint = @import("std").mem.zeroes(c_uint),
    isize: c_short = @import("std").mem.zeroes(c_short),
    iblur: c_short = @import("std").mem.zeroes(c_short),
    font: ?*struct_FONSfont_1 = @import("std").mem.zeroes(?*struct_FONSfont_1),
    prevGlyphIndex: c_int = @import("std").mem.zeroes(c_int),
    str: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    next: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    end: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    utf8state: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const FONStextIter = struct_FONStextIter;
pub const struct_FONScontext = opaque {};
pub const FONScontext = struct_FONScontext;
pub extern fn fonsCreateInternal(params: [*c]FONSparams) ?*FONScontext;
pub extern fn fonsDeleteInternal(s: ?*FONScontext) void;
pub extern fn fonsSetErrorCallback(s: ?*FONScontext, callback: ?*const fn (?*anyopaque, c_int, c_int) callconv(.c) void, uptr: ?*anyopaque) void;
pub extern fn fonsGetAtlasSize(s: ?*FONScontext, width: [*c]c_int, height: [*c]c_int) void;
pub extern fn fonsExpandAtlas(s: ?*FONScontext, width: c_int, height: c_int) c_int;
pub extern fn fonsResetAtlas(stash: ?*FONScontext, width: c_int, height: c_int) c_int;
pub extern fn fonsAddFont(s: ?*FONScontext, name: [*c]const u8, path: [*c]const u8) c_int;
pub extern fn fonsAddFontMem(s: ?*FONScontext, name: [*c]const u8, data: [*c]u8, ndata: c_int, freeData: c_int) c_int;
pub extern fn fonsGetFontByName(s: ?*FONScontext, name: [*c]const u8) c_int;
pub extern fn fonsAddFallbackFont(stash: ?*FONScontext, base: c_int, fallback: c_int) c_int;
pub extern fn fonsPushState(s: ?*FONScontext) void;
pub extern fn fonsPopState(s: ?*FONScontext) void;
pub extern fn fonsClearState(s: ?*FONScontext) void;
pub extern fn fonsSetSize(s: ?*FONScontext, size: f32) void;
pub extern fn fonsSetColor(s: ?*FONScontext, color: c_uint) void;
pub extern fn fonsSetSpacing(s: ?*FONScontext, spacing: f32) void;
pub extern fn fonsSetBlur(s: ?*FONScontext, blur: f32) void;
pub extern fn fonsSetAlign(s: ?*FONScontext, @"align": c_int) void;
pub extern fn fonsSetFont(s: ?*FONScontext, font: c_int) void;
pub extern fn fonsDrawText(s: ?*FONScontext, x: f32, y: f32, string: [*c]const u8, end: [*c]const u8) f32;
pub extern fn fonsTextBounds(s: ?*FONScontext, x: f32, y: f32, string: [*c]const u8, end: [*c]const u8, bounds: [*c]f32) f32;
pub extern fn fonsLineBounds(s: ?*FONScontext, y: f32, miny: [*c]f32, maxy: [*c]f32) void;
pub extern fn fonsVertMetrics(s: ?*FONScontext, ascender: [*c]f32, descender: [*c]f32, lineh: [*c]f32) void;
pub extern fn fonsTextIterInit(stash: ?*FONScontext, iter: [*c]FONStextIter, x: f32, y: f32, str: [*c]const u8, end: [*c]const u8) c_int;
pub extern fn fonsTextIterNext(stash: ?*FONScontext, iter: [*c]FONStextIter, quad: [*c]struct_FONSquad) c_int;
pub extern fn fonsGetTextureData(stash: ?*FONScontext, width: [*c]c_int, height: [*c]c_int) [*c]const u8;
pub extern fn fonsValidateTexture(s: ?*FONScontext, dirty: [*c]c_int) c_int;
pub extern fn fonsDrawDebug(s: ?*FONScontext, x: f32, y: f32) void;

pub const FONS_H = "";
pub const FONS_DEF = @compileError("unable to translate C expr: unexpected token 'extern'");
// deps/fontstash_b5ddc97/src/fontstash.h:30:9
pub const FONS_INVALID = -@as(c_int, 1);
pub const FONSflags = enum_FONSflags;
pub const FONSalign = enum_FONSalign;
pub const FONSerrorCode = enum_FONSerrorCode;
