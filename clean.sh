#!/bin/bash -e

if [ -d "bin" ]; then
	rm -r bin/
fi

if [ -d "build" ]; then
	rm -r build/
fi

#if [ -d "libs" ]; then
	#rm -r libs/
#fi

if [ -f "CMakeLists.txt.user" ]; then
	rm CMakeLists.txt.user
fi