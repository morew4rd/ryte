const std = @import("std");
const glfw = @import("glfw");
const keys = @import("input_keys.zig");
const window = @import("window.zig");

const key_count = keys.key_count;
const mousebutton_count = keys.mousebutton_count;
const max_codepoints = 32;

pub const Key = keys.Key;
pub const MouseButton = keys.MouseButton;

const InputState = struct {
    // Keyboard
    keys_cur: [key_count]bool,
    keys_prev: [key_count]bool,
    keys_rep: [key_count]bool,

    // Mouse
    mousebuttons_cur: [mousebutton_count]bool,
    mousebuttons_prev: [mousebutton_count]bool,

    // Text input
    textinput_data: [max_codepoints]u32,
    textinput_idx: usize,
};

var input_state: InputState = InputState{
    .keys_cur = [_]bool{false} ** key_count,
    .keys_prev = [_]bool{false} ** key_count,
    .keys_rep = [_]bool{false} ** key_count,
    .mousebuttons_cur = [_]bool{false} ** mousebutton_count,
    .mousebuttons_prev = [_]bool{false} ** mousebutton_count,
    .textinput_data = [_]u32{0} ** max_codepoints,
    .textinput_idx = 0,
};

fn keyCallback(win: ?*glfw.GLFWwindow, key: c_int, scancode: c_int, action: c_int, mods: c_int) callconv(.C) void {
    _ = scancode;
    _ = mods;
    _ = win;

    if (key >= 0 and key < key_count) {
        if (action == glfw.GLFW_PRESS) {
            input_state.keys_cur[@intCast(key)] = true;
        } else if (action == glfw.GLFW_RELEASE) {
            input_state.keys_cur[@intCast(key)] = false;
            input_state.keys_rep[@intCast(key)] = false;
        } else if (action == glfw.GLFW_REPEAT) {
            input_state.keys_rep[@intCast(key)] = true;
        }
    }
}

fn mouseButtonCallback(win: ?*glfw.GLFWwindow, button: c_int, action: c_int, mods: c_int) callconv(.C) void {
    _ = mods;
    _ = win;

    if (button >= 0 and button < mousebutton_count) {
        if (action == glfw.GLFW_PRESS) {
            input_state.mousebuttons_cur[@intCast(button)] = true;
        } else if (action == glfw.GLFW_RELEASE) {
            input_state.mousebuttons_cur[@intCast(button)] = false;
        }
    }
}

fn mouseScrollCallback(win: ?*glfw.GLFWwindow, xoffset: f64, yoffset: f64) callconv(.C) void {
    _ = xoffset;
    _ = win;

    if (yoffset > 0) {
        input_state.mousebuttons_cur[@intFromEnum(keys.MouseButton.scrollup)] = true;
    } else if (yoffset < 0) {
        input_state.mousebuttons_cur[@intFromEnum(keys.MouseButton.scrolldown)] = true;
    }
}

fn characterCallback(win: ?*glfw.GLFWwindow, codepoint: u32) callconv(.C) void {
    _ = win;
    if (input_state.textinput_idx < max_codepoints) {
        input_state.textinput_data[input_state.textinput_idx] = codepoint;
        input_state.textinput_idx += 1;
    } else {
        std.log.warn("Warning: Too many char inputs in one frame. Only few expected per frame.", .{});
    }
}

fn updateKeysAndButtons() void {
    // Keyboard keys
    @memcpy(input_state.keys_prev[0..], input_state.keys_cur[0..]);
    @memset(input_state.keys_rep[0..], false);

    // Mouse buttons
    @memcpy(input_state.mousebuttons_prev[0..], input_state.mousebuttons_cur[0..]);
}

fn resetMouseScroll() void {
    input_state.mousebuttons_cur[@intFromEnum(keys.MouseButton.scrollup)] = false;
    input_state.mousebuttons_cur[@intFromEnum(keys.MouseButton.scrolldown)] = false;
}

fn resetTextInput() void {
    @memset(input_state.textinput_data[0..], 0);
    input_state.textinput_idx = 0;
}

pub fn initInputCallbacks(win: *glfw.GLFWwindow) !void {
    _ = glfw.glfwSetKeyCallback(win, keyCallback);
    _ = glfw.glfwSetMouseButtonCallback(win, mouseButtonCallback);
    _ = glfw.glfwSetScrollCallback(win, mouseScrollCallback);
    _ = glfw.glfwSetCharCallback(win, characterCallback);
}

pub fn updateInputState() void {
    updateKeysAndButtons();
    resetMouseScroll();
    resetTextInput();
}

pub fn keyDown(key: Key) bool {
    return input_state.keys_cur[@intFromEnum(key)];
}

pub fn keyPressed(key: Key) bool {
    return input_state.keys_cur[@intFromEnum(key)] and !input_state.keys_prev[@intFromEnum(key)];
}

pub fn keyReleased(key: Key) bool {
    return !input_state.keys_cur[@intFromEnum(key)] and input_state.keys_prev[@intFromEnum(key)];
}

pub fn keyRepeat(key: Key) bool {
    return input_state.keys_rep[@intFromEnum(key)];
}

pub fn mouseDown(button: MouseButton) bool {
    return input_state.mousebuttons_cur[@intFromEnum(button)];
}

pub fn mousePressed(button: MouseButton) bool {
    return input_state.mousebuttons_cur[@intFromEnum(button)] and !input_state.mousebuttons_prev[@intFromEnum(button)];
}

pub fn mouseReleased(button: MouseButton) bool {
    return !input_state.mousebuttons_cur[@intFromEnum(button)] and input_state.mousebuttons_prev[@intFromEnum(button)];
}

pub fn getMousePosition() struct { x: f64, y: f64 } {
    var x: f64 = undefined;
    var y: f64 = undefined;
    glfw.glfwGetCursorPos(window.main_window.window, &x, &y);
    return .{
        .x = x - window.main_window.margins.left - window.main_window.paddings.left,
        .y = y - window.main_window.margins.top - window.main_window.paddings.top,
    };
}
