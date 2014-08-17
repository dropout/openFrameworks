cmake_minimum_required(VERSION 2.8)
include(${CMAKE_SOURCE_DIR}/cmake/Macros.cmake)

project(examples)

if (OF_BUILD_EXAMPLES_3D)
	add_subdirectory(${CMAKE_SOURCE_DIR}/examples/3d/normalsExample)
endif()



#add_subdirectory(advancedGraphicsExample)
#add_subdirectory(audioInputExample)
#add_subdirectory(audioOutputExample)
#add_subdirectory(emptyExample)
#add_subdirectory(eventsExample)
#add_subdirectory(firmataExample)
#add_subdirectory(fontsExample)
#add_subdirectory(fontShapesExample)
#add_subdirectory(graphicsExample)
#add_subdirectory(imageLoaderExample)
#add_subdirectory(imageSaverExample)
#add_subdirectory(movieGrabberExample)
#add_subdirectory(moviePlayerExample)
#add_subdirectory(polygonExample)
#add_subdirectory(serialExample)
#add_subdirectory(soundPlayerExample)
#add_subdirectory(soundPlayerFFTExample)
#add_subdirectory(textureExample)
#add_subdirectory(textureScreengrabExample)
#add_subdirectory(windowExample)

#include(${CMAKE_SOURCE_DIR}/cmake/Macros.cmake)

# project name
#project(examples)

# find dependent libraries
#find_package(OpenGL REQUIRED)
#find_package(GLEW REQUIRED)
#find_library(glfw REQUIRED)

# inclusion directories
#include_directories(${LAB_INCLUDE_DIR})
#include_directories(${LAB_LIBS_INCLUDE_DIR})
#include_directories(${PROJECT_SOURCE_DIR})

# common source files for examples
#set(SRC
#    ${LAB_INCLUDE_DIR}/stb_image.h
#)

# output directory
#set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin)

#
#   BASIC OPENGL EXAMPLES
#

# 01-Triangle
#add_executable(01-Triangle ${PROJECT_SOURCE_DIR}/src/opengl/01-Triangle.cpp)
#target_link_libraries(01-Triangle ${LAB_LIBS_LIB_DIR}/liblab.so GLEW ${LAB_LIBS_DIR}/libglfw.so GL)

# 02-Quad
#add_executable(02-Quad ${PROJECT_SOURCE_DIR}/src/opengl/02-Quad.cpp)
#target_link_libraries(02-Quad ${LAB_LIBS_LIB_DIR}/liblab.so GLEW ${LAB_LIBS_DIR}/libglfw.so GL)

# 03-TexturedQuad
#add_executable(03-TexturedQuad ${PROJECT_SOURCE_DIR}/src/opengl/03-TexturedQuad.cpp)
#target_link_libraries(03-TexturedQuad ${LAB_LIBS_LIB_DIR}/liblab.so GLEW ${LAB_LIBS_DIR}/libglfw.so GL)

# 04-Cube
#add_executable(04-Cube ${PROJECT_SOURCE_DIR}/src/opengl/04-Cube.cpp)
#target_link_libraries(04-Cube ${LAB_LIBS_LIB_DIR}/liblab.so GLEW ${LAB_LIBS_DIR}/libglfw.so GL)

# 05-Lighting
#add_executable(05-DiffuseLighting ${PROJECT_SOURCE_DIR}/src/opengl/05-DiffuseLighting.cpp)
#target_link_libraries(05-DiffuseLighting ${LAB_LIBS_LIB_DIR}/liblab.so GLEW ${LAB_LIBS_DIR}/libglfw.so GL)

# add_definitions(-DOGLPLUS_USE_GLCOREARB_H=0 -DOGLPLUS_USE_GLEW=1)

#add_definitions(-DGLM_FORCE_RADIANS )

# 01-ShaderProgramExample
#add_executable(01-ShaderProgramExample ${PROJECT_SOURCE_DIR}/src/basic/01-ShaderProgramExample.cpp)
#target_link_libraries(01-ShaderProgramExample ${LAB_LIBS_LIB_DIR}/liblab.so GLEW ${LAB_LIBS_DIR}/libglfw.so GL)

# copy assets
#lab_copy_directory_if_changed(03-TexturedQuad ${CMAKE_SOURCE_DIR}/assets ${CMAKE_SOURCE_DIR}/bin/assets)