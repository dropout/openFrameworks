cmake_minimum_required(VERSION 2.8)

# include utility macros
include(${CMAKE_SOURCE_DIR}/cmake/Macros.cmake)

# project name
#project(openFrameworksSuite)

# include configuration
include(${CMAKE_SOURCE_DIR}/cmake/Config.cmake)

# disable building in source folder
if("${PROJECT_SOURCE_DIR}" STREQUAL "${PROJECT_BINARY_DIR}")
	message(SEND_ERROR "In-source builds are not allowed.")
endif("${PROJECT_SOURCE_DIR}" STREQUAL "${PROJECT_BINARY_DIR}")

# version number settings
set(OF_VERSION_MAJOR 0)
set(OF_VERSION_MINOR 8)
set(OF_VERSION_PATCH 3)
set(OF_VERSION ${OF_VERSION_MAJOR}.${OF_VERSION_MINOR}.${OF_VERSION_PATCH})

# variables for internal usage
set(OF_ROOT_DIR "${CMAKE_SOURCE_DIR}")
set(OF_LIBS_DIR "${CMAKE_SOURCE_DIR}/libs")

# cmake configuration
set(CMAKE_MODULE_PATH						${CMAKE_SOURCE_DIR}/cmake/Modules)
set(CMAKE_CXX_FLAGS							"-Wall -std=c++11")
set(CMAKE_CXX_FLAGS_DEBUG					"-O0 -g")
set(CMAKE_CXX_FLAGS_MINSIZEREL			"-Os -DNDEBUG")
set(CMAKE_CXX_FLAGS_RELEASE				"-O4 -DNDEBUG")
set(CMAKE_CXX_FLAGS_RELWITHDEBINFO	"-O2 -g")

# variables exposed to the user
of_option(OF_OUTPUT_DIR "${CMAKE_SOURCE_DIR}/bin" STRING "The output directory of our targets.")
of_option(OF_BUILD_EXAMPLES_3D ON BOOL "Build 3d examples.")
of_option(OF_BUILD_EXAMPLES_GL ON BOOL "Build gl examples.")
of_option(OF_BUILD_EXAMPLES_EVENTS ON BOOL "Build events examples.")
of_option(OF_BUILD_EXAMPLES_GRAPHICS ON BOOL "Build graphics examples.")
#of_option(OF_BUILD_EXAMPLES_GLES ON BOOL "Build events examples.")
#of_option(OF_BUILD_EXAMPLES_GUI ON BOOL "Build events examples.")
#of_option(OF_BUILD_EXAMPLES_UTILS ON BOOL "Build events examples.")

# inform cmake what to build
add_subdirectory(libs/openFrameworks)
add_subdirectory(examples)
