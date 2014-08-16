cmake_minimum_required(VERSION 2.8)
include(${CMAKE_SOURCE_DIR}/cmake/Macros.cmake)

# Project name
project(openFrameworks)

# Disable building in source
if("${PROJECT_SOURCE_DIR}" STREQUAL "${PROJECT_BINARY_DIR}")
	message(SEND_ERROR "In-source builds are not allowed.")
endif("${PROJECT_SOURCE_DIR}" STREQUAL "${PROJECT_BINARY_DIR}")

# Version number settings
set(OF_VERSION_MAJOR 0)
set(OF_VERSION_MINOR 8)
set(OF_VERSION_PATCH 3)

# Project related internal variables
set(OF_LIBS_DIR "${CMAKE_SOURCE_DIR}/libs")

# Cmake variables
set(CMAKE_MODULE_PATH						${CMAKE_SOURCE_DIR}/cmake)
set(CMAKE_CXX_FLAGS							"-Wall -std=c++11")
set(CMAKE_CXX_FLAGS_DEBUG					"-O0 -g")
set(CMAKE_CXX_FLAGS_MINSIZEREL			"-Os -DNDEBUG")
set(CMAKE_CXX_FLAGS_RELEASE				"-O4 -DNDEBUG")
set(CMAKE_CXX_FLAGS_RELWITHDEBINFO	"-O2 -g")

# Options exposed to the user
OF_option(BUILD_SHARED_LIBS ON BOOL "Build shared libraries.")

# openFrameworks library project
add_subdirectory(libs/openFrameworks)

# openFrameworks examples project
#add_subdirectory(examples)