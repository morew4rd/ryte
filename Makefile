.PHONY: default build run

default: build run

build:
	zig build

run:
	./zig-out/bin/ryte_example