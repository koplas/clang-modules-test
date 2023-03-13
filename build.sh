#!/bin/bash

Files=""
for file in {a..z}; do
	Files+="vulkan-${file}.cppm "
done
Files+=" vulkan.cppm"

echo "Building vulkan module"
for file in $Files; do
	clang++ -std=c++20 -fprebuilt-module-path=. --precompile $file -o ${file%.*}.pcm
	clang++ -std=c++20 -fprebuilt-module-path=. $file -c -o ${file%.*}.o
done

echo "Building test.cppm"
time clang++ -ftime-trace -std=c++20 -fprebuilt-module-path=. --precompile test.cppm -o test.pcm
time clang++ -std=c++20 -fprebuilt-module-path=. test.cppm -c -o text.o

echo "Building test-without-import.cppm"
time clang++ -ftime-trace -std=c++20 -fprebuilt-module-path=. --precompile test-without-import.cppm -o test-without-import.pcm
time clang++ -std=c++20 -fprebuilt-module-path=. test-without-import.cppm -c -o test-without-import.o
