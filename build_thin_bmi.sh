#!/bin/bash

Files=""
for file in {a..z}; do
	Files+="vulkan-${file}.cppm "
done
Files+=" vulkan.cppm"

echo "Building vulkan module"
for file in $Files; do
	clang++ -std=c++20 -fprebuilt-module-path=. -fgen-reduced-bmi -c $file -o ${file%.*}.o
done

echo "Building test.cppm"
time clang++ -ftime-trace -std=c++20 -fprebuilt-module-path=. -fgen-reduced-bmi -c test.cppm -o test.o

echo "Building test-without-import.cppm"
time clang++ -ftime-trace -std=c++20 -fprebuilt-module-path=. -fgen-reduced-bmi -c test-without-import.cppm -o test-without-import.o
