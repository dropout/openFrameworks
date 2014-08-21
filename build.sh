#!/bin/bash -e

if [ ! -d "build" ]; then
	echo "build files has not been generated yet"
else
	cd ./build/ && ninja all
fi
