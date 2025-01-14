RYTE
====

What?
-----

This project is an experiment in converting part of Lyte2D's backend from C to Zig. I was initially only experimenting with the build system, but got carried away 😬

Lyte2D: https://lyte2d.com and sources are at https://github.com/lyte2d/lyte2d

Example code from this repo built for HTML5 runs here to demo this project: https://morew4rd.com/lyte2dzig

It's currently "parked" until Zig stabilizes a bit more. But I'd happily take PRs if folks are interested.


Features
---------

**In a single namespace it supports following:**

- Image loading and rendering
- Music and sound effects
- Shape drawing
- High fidelity font rendering
- Retina/high DPI support
- 2D rotation, scaling, translation
- Keyboard and mouse input
- Asynchronously loading files
- Creating virtual filesystems from zip files
- Off screen canvas support (draw to a canvas, and draw that canvas on screen as an image)
- Windows, Mac and HTML5 (via emscripten)
- Cross platform compilation
- Linux builds not tested yet. Theoretically they should just work
- `build.zig` does pretty "complicated" steps to connect everything together

**Not done yet:**
- `drawImageRect`, to make sprites simpler (I'd take a PR for it!)
- Gamepad input possible thanks to GLFW, but TBD
- GLSL 3.3 shaders possible, but TBD
- Ios/Android targeting should be possible


How to use:
-----------
- You need a zig installation from the mater branch. 0.13.0 will not work with this project.
- `make` should build and run the example on Windows and MacOS. (`Makefile` has simple automation, worth checking)
- `make b-emscripten r-emscripten` should build and run it on the browser. (requires python for the static web server,but any static server would do.)
- `assets/files.zip` file contains a font, an image and an mp3 file to showcase features
- See example code in `example/main.zig` for usage.


Dependencies
------------

All the code dependencies are in the source tree.

- GLFW: Window/GL context
- Sokol_gfx & sokol_gp & stb_image: graphics
- Fontstash & freetype: fast font rendering
- PHYSFS and sokol_fetch: async file downloads & virtual file system
- Raudio from raylib: music and sound fx

All bindings for the dependencies are generated via `zig translate-c` and manually massaged for simplicty.

Additionally for HTML5/wasm builds emscripten is required, but build.zig takes care of that.


License
-------

Project is licensed under MIT (see `license.txt`)

Each depencency has its own license though


