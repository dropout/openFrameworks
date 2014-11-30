cmake_minimum_required(VERSION 2.8)

# example name
get_filename_component(BASE_DIR ${CMAKE_CURRENT_LIST_FILE} PATH)
get_filename_component(BASE_DIRNAME ${BASE_DIR} NAME)

# example category name
get_filename_component(PARENT_DIR ${BASE_DIR} PATH)
get_filename_component(PARENT_DIRNAME ${PARENT_DIR} NAME)

# source files
set(SOURCE
	${BASE_DIR}/src/main.cpp
	${BASE_DIR}/src/eventsObject.h
	${BASE_DIR}/src/ofApp.h
	${BASE_DIR}/src/ofApp.cpp	
)

# find openFrameworks
set(openFrameworks_DIR ${CMAKE_BINARY_DIR}) # generated project config file location
find_package(openFrameworks)

# header file locations
include_directories(
	${BASE_DIR}/src
	${openFrameworks_INCLUDE_DIRS}
)

# set up target
add_executable(${BASE_DIRNAME} ${SOURCE})



# link libraries
target_link_libraries(${BASE_DIRNAME}
	openFrameworks
	${openFrameworks_LIBRARIES}
)

# where to put example executable
set_target_properties(${BASE_DIRNAME} PROPERTIES 
	RUNTIME_OUTPUT_DIRECTORY ${OF_OUTPUT_DIR}/examples/${PARENT_DIRNAME}/${BASE_DIRNAME}
)

# copy assets required for example
of_copy_directory_if_changed(${BASE_DIRNAME} ${BASE_DIR}/bin ${OF_OUTPUT_DIR}/examples/${PARENT_DIRNAME}/${BASE_DIRNAME})
