const std = @import("std");
const builtin = @import("builtin");

pub const MouseButton = enum(u8) {
    mb1 = 0,
    mb2 = 1,
    mb3 = 2,
    mb4 = 3,
    mb5 = 4,
    mb6 = 5,
    mb7 = 6,
    mb8 = 7,
    scrollup = 8,
    scrolldown = 9,
};

pub const mousebutton_count = @intFromEnum(MouseButton.scrolldown) + 1;

// Note: values should match GLFW ones

pub const Key = enum(u16) {
    space = 32,
    tick = 39,
    comma = 44,
    dash = 45,
    period = 46,
    slash = 47,
    @"0" = 48,
    @"1" = 49,
    @"2" = 50,
    @"3" = 51,
    @"4" = 52,
    @"5" = 53,
    @"6" = 54,
    @"7" = 55,
    @"8" = 56,
    @"9" = 57,
    semicolon = 59,
    equal = 61,
    a = 65,
    b = 66,
    c = 67,
    d = 68,
    e = 69,
    f = 70,
    g = 71,
    h = 72,
    i = 73,
    j = 74,
    k = 75,
    l = 76,
    m = 77,
    n = 78,
    o = 79,
    p = 80,
    q = 81,
    r = 82,
    s = 83,
    t = 84,
    u = 85,
    v = 86,
    w = 87,
    x = 88,
    y = 89,
    z = 90,
    open_bracket = 91,
    backslash = 92,
    close_bracket = 93,
    backtick = 96,
    world_1 = 161,
    world_2 = 162,
    escape = 256,
    enter = 257,
    tab = 258,
    backspace = 259,
    insert = 260,
    delete = 261,
    right = 262,
    left = 263,
    down = 264,
    up = 265,
    page_up = 266,
    page_down = 267,
    home = 268,
    end = 269,
    caps_lock = 280,
    scroll_lock = 281,
    num_lock = 282,
    print_screen = 283,
    pause = 284,
    f1 = 290,
    f2 = 291,
    f3 = 292,
    f4 = 293,
    f5 = 294,
    f6 = 295,
    f7 = 296,
    f8 = 297,
    f9 = 298,
    f10 = 299,
    f11 = 300,
    f12 = 301,
    f13 = 302,
    f14 = 303,
    f15 = 304,
    f16 = 305,
    f17 = 306,
    f18 = 307,
    f19 = 308,
    f20 = 309,
    f21 = 310,
    f22 = 311,
    f23 = 312,
    f24 = 313,
    f25 = 314,
    kp_0 = 320,
    kp_1 = 321,
    kp_2 = 322,
    kp_3 = 323,
    kp_4 = 324,
    kp_5 = 325,
    kp_6 = 326,
    kp_7 = 327,
    kp_8 = 328,
    kp_9 = 329,
    kp_decimal = 330,
    kp_divide = 331,
    kp_multiply = 332,
    kp_subtract = 333,
    kp_add = 334,
    kp_enter = 335,
    kp_equal = 336,
    left_shift = 340,
    left_control = 341,
    left_alt = 342,
    left_super = 343,
    right_shift = 344,
    right_control = 345,
    right_alt = 346,
    right_super = 347,
    menu = 348,
};

pub const key_count = @intFromEnum(Key.menu) + 1;

// Gamepad support
pub const GamepadButton = if (builtin.target.os.tag == .emscripten) enum(u8) {
    pad_a = 0,
    pad_b = 1,
    pad_x = 2,
    pad_y = 3,
    left_bumper = 4,
    right_bumper = 5,
    back = 8,
    start = 9,
    guide = 16,
    left_thumb = 10,
    right_thumb = 11,
    dpad_up = 12,
    dpad_right = 15,
    dpad_down = 13,
    dpad_left = 14,
    internal_left_trigger = 6, // only in emscripten
    internal_right_trigger = 7, // only in emscripten
} else enum(u8) {
    pad_a = 0,
    pad_b = 1,
    pad_x = 2,
    pad_y = 3,
    left_bumper = 4,
    right_bumper = 5,
    back = 6,
    start = 7,
    guide = 8,
    left_thumb = 9,
    right_thumb = 10,
    dpad_up = 11,
    dpad_right = 12,
    dpad_down = 13,
    dpad_left = 14,
};

pub const GamepadAxis = enum(u8) {
    left_x = 0,
    left_y = 1,
    right_x = 2,
    right_y = 3,
    left_trigger = 4,
    right_trigger = 5,
};
