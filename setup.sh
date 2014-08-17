#!/bin/bash -e

export CC=/usr/bin/clang
export CXX=/usr/bin/clang++

if [ ! -d "build" ]; then
	mkdir build
fi

cd ./build/ && cmake -G"Ninja" -DBUILD_SHARED_LIBS=TRUE -DCMAKE_BUILD_TYPE=RelWithDebInfo ..