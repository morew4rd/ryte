const std = @import("std");
const physfs = @import("physfs");
const raudio = @import("raudio");
const fs = @import("fs.zig");

pub const AudioErr = fs.FsErr || error{
    InitFailed,
    LoadFailed,
    InvalidHandle,
    AlreadyPlaying,
    NotPlaying,
    InvalidVolume,
    InvalidPan,
    InvalidPitch,
    SystemResources,
};

pub const Music = struct {
    music: raudio.Music,
    volume: f32,
    pan: f32,
    pitch: f32,
    data: []u8,
};

const SoundData = struct {
    wave: raudio.Wave,
    sound: raudio.Sound,
    data: []u8,
    ref_count: usize,
};

pub const Sound = struct {
    sdi: *SoundData,
    sound_alias: raudio.Sound,
    volume: f32,
    pan: f32,
    pitch: f32,
};

var current_music: ?*Music = null;
var master_volume: f32 = 0.7;

pub fn init() AudioErr!void {
    raudio.InitAudioDevice();
    if (!raudio.IsAudioDeviceReady()) {
        return AudioErr.InitFailed;
    }
}

pub fn deinit() void {
    raudio.CloseAudioDevice();
}

pub fn update() void {
    if (current_music) |music| {
        if (raudio.IsMusicStreamPlaying(music.music)) {
            raudio.UpdateMusicStream(music.music);
        }
    }
}

pub fn getMasterVolume() f32 {
    return master_volume;
}

pub fn setMasterVolume(vol: f32) void {
    master_volume = vol;
    raudio.SetMasterVolume(vol);
}

pub fn loadMusic(path: []const u8, allocator: std.mem.Allocator) AudioErr!*Music {
    const blob = try fs.loadFile(path);
    errdefer fs.removeBlob(blob);

    const file_extension = path[path.len - 4 ..]; // Get last 4 chars for extension
    var music = raudio.LoadMusicStreamFromMemory(file_extension.ptr, blob.buffer.ptr, @intCast(blob.buffer.len));
    if (!raudio.IsMusicReady(music)) {
        return AudioErr.LoadFailed;
    }

    const mi = try allocator.create(Music);
    mi.* = .{
        .music = music,
        .volume = 1.0,
        .pan = 0.5,
        .pitch = 1.0,
        .data = blob.buffer,
    };
    music.looping = true;

    return mi;
}

pub fn cleanupMusic(music: *Music, allocator: std.mem.Allocator) void {
    raudio.StopMusicStream(music.music);
    raudio.UnloadMusicStream(music.music);
    allocator.free(music.data);
    allocator.destroy(music);
}

pub fn playMusic(music: *Music) AudioErr!void {
    if (current_music) |current| {
        raudio.StopMusicStream(current.music);
    }
    current_music = music;
    raudio.PlayMusicStream(music.music);
}

pub fn pauseMusic(music: *Music) void {
    raudio.PauseMusicStream(music.music);
}

pub fn resumeMusic(music: *Music) void {
    raudio.ResumeMusicStream(music.music);
}

pub fn stopMusic(music: *Music) void {
    raudio.StopMusicStream(music.music);
    current_music = null;
}

pub fn isMusicPlaying(music: *Music) bool {
    return raudio.IsMusicStreamPlaying(music.music);
}

pub fn getMusicVolume(music: *Music) f32 {
    return music.volume;
}

pub fn getMusicPan(music: *Music) f32 {
    return music.pan;
}

pub fn getMusicPitch(music: *Music) f32 {
    return music.pitch;
}

pub fn getMusicLength(music: *Music) f32 {
    return raudio.GetMusicTimeLength(music.music);
}

pub fn getMusicPlayed(music: *Music) f32 {
    return raudio.GetMusicTimePlayed(music.music);
}

pub fn setMusicVolume(music: *Music, vol: f32) void {
    music.volume = vol;
    raudio.SetMusicVolume(music.music, vol);
}

pub fn setMusicPan(music: *Music, pan: f32) void {
    music.pan = pan;
    raudio.SetMusicPan(music.music, pan);
}

pub fn setMusicPitch(music: *Music, pitch: f32) void {
    music.pitch = pitch;
    raudio.SetMusicPitch(music.music, pitch);
}

pub fn seekMusic(music: *Music, secs: f32) void {
    raudio.SeekMusicStream(music.music, secs);
}

pub fn loadSound(path: []const u8, allocator: std.mem.Allocator) AudioErr!*Sound {
    const blob = try fs.loadFile(path);
    errdefer fs.removeBlob(blob);

    const file_extension = path[path.len - 4 ..]; // Get last 4 chars for extension
    const wave = raudio.LoadWaveFromMemory(file_extension.ptr, blob.buffer.ptr, @intCast(blob.buffer.len));
    const sound = raudio.LoadSoundFromWave(wave);

    const sdi = try allocator.create(SoundData);
    sdi.* = .{
        .wave = wave,
        .sound = sound,
        .data = blob.buffer,
        .ref_count = 1,
    };

    const si = try allocator.create(Sound);
    si.* = .{
        .sdi = sdi,
        .sound_alias = raudio.LoadSoundAlias(sound),
        .volume = 1.0,
        .pan = 0.5,
        .pitch = 1.0,
    };

    return si;
}

pub fn cloneSound(sound: *Sound, allocator: std.mem.Allocator) AudioErr!*Sound {
    const new_si = try allocator.create(Sound);
    new_si.* = .{
        .sdi = sound.sdi,
        .sound_alias = raudio.LoadSoundAlias(sound.sdi.sound),
        .volume = sound.volume,
        .pan = sound.pan,
        .pitch = sound.pitch,
    };
    sound.sdi.ref_count += 1;
    return new_si;
}

pub fn cleanupSound(sound: *Sound, allocator: std.mem.Allocator) void {
    sound.sdi.ref_count -= 1;
    if (sound.sdi.ref_count == 0) {
        raudio.UnloadSound(sound.sdi.sound);
        raudio.UnloadWave(sound.sdi.wave);
        allocator.free(sound.sdi.data);
        allocator.destroy(sound.sdi);
    }
    allocator.destroy(sound);
}

pub fn playSound(sound: *Sound) void {
    raudio.PlaySound(sound.sound_alias);
}

pub fn pauseSound(sound: *Sound) void {
    raudio.PauseSound(sound.sound_alias);
}

pub fn resumeSound(sound: *Sound) void {
    raudio.ResumeSound(sound.sound_alias);
}

pub fn stopSound(sound: *Sound) void {
    raudio.StopSound(sound.sound_alias);
}

pub fn isSoundPlaying(sound: *Sound) bool {
    return raudio.IsSoundPlaying(sound.sound_alias);
}

pub fn getSoundVolume(sound: *Sound) f32 {
    return sound.volume;
}

pub fn getSoundPan(sound: *Sound) f32 {
    return sound.pan;
}

pub fn getSoundPitch(sound: *Sound) f32 {
    return sound.pitch;
}

pub fn setSoundVolume(sound: *Sound, vol: f32) void {
    sound.volume = vol;
    raudio.SetSoundVolume(sound.sound_alias, vol);
}

pub fn setSoundPan(sound: *Sound, pan: f32) void {
    sound.pan = pan;
    raudio.SetSoundPan(sound.sound_alias, pan);
}

pub fn setSoundPitch(sound: *Sound, pitch: f32) void {
    sound.pitch = pitch;
    raudio.SetSoundPitch(sound.sound_alias, pitch);
}
