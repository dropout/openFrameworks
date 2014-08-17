cmake_minimum_required(VERSION 2.8)
include(${CMAKE_SOURCE_DIR}/cmake/Macros.cmake)

# project name
get_filename_component(BASEDIR ${CMAKE_CURRENT_LIST_FILE} PATH)
get_filename_component(EXAMPLENAME ${BASEDIR} NAME)

set(SOURCE
	${BASEDIR}/src/main.cpp
	${BASEDIR}/src/ofApp.h
	${BASEDIR}/src/ofApp.cpp	
)

#OF_print_var( openFrameworks_SOURCE_DIR )
#OF_print_var( openFrameworks_INCLUDE_DIRECTORIES )
#OF_print_var( openFrameworks_INCLUDE_DIR )
#OF_print_var( openFrameworks_INCLUDE_DIRS )
#OF_print_var( OF_INCLUDE_DIRS )





#if(APPLE)
#	set(CMAKE_OSX_ARCHITECTURES "i386")
#endif(APPLE)

#include(FindPkgConfig)
#pkg_check_modules(OF REQUIRED openFrameworks)



#include_directories( src ${OF_INCLUDE_DIRS})

#file( GLOB_RECURSE PROJECT_SOURCES src/*.cpp)

include_directories(${OF_INCLUDE_DIRS})

add_executable(${EXAMPLENAME} ${SOURCE})
target_link_libraries(${EXAMPLENAME} ${OF_LIBRARIES} openFrameworks)

