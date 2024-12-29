.PHONY: default build run
.PHONY: b-windows b-linux b-wasm
.PHONY: r-windows r-wasm

default: build run

build:
	zig build

b-windows:
	zig build -Dtarget=x86_64-windows-gnu -Doptimize=ReleaseSmall

b-linux:
	zig build -Dtarget=x86_64-linux-gnu -Doptimize=ReleaseSmall

# emscripten
b-wasm:
	zig build -Dtarget=wasm32-emscripten -Doptimize=ReleaseSmall


run:
	./zig-out/bin/ryte_example

r-windows:
	wine ./zig-out/bin/ryte_example.exe

r-wasm:
	python -m http.server -d ./zig-out/web 8000
