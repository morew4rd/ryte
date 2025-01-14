.PHONY: default build run
.PHONY: b-windows b-linux b-emscripten
.PHONY: r-windows r-emscripten

default: build run

build:
	zig build

b-windows:
	zig build -Dtarget=x86_64-windows-gnu -Doptimize=ReleaseSmall

b-linux:
	zig build -Dtarget=x86_64-linux-gnu -Doptimize=ReleaseSmall

# emscripten
b-emscripten:
	zig build -Dtarget=wasm32-emscripten -Doptimize=ReleaseSmall
	cp -R ./assets ./zig-out/web


run:
	./zig-out/bin/ryte_example

r-windows:
	wine ./zig-out/bin/ryte_example.exe

r-emscripten:
	python -m http.server -d ./zig-out/web 8000
