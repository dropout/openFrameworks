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
	${BASE_DIR}/src/ofApp.h
	${BASE_DIR}/src/ofApp.cpp	
)

# header file locations
include_directories(${OF_INCLUDE_DIRS})

# set up target
add_executable(${BASE_DIRNAME} ${SOURCE})

# linked libraries
target_link_libraries(${BASE_DIRNAME} 
	${OF_LIBRARIES} 
	openFrameworks
)

# where to put example executable
set_target_properties(${BASE_DIRNAME} PROPERTIES 
	RUNTIME_OUTPUT_DIRECTORY ${OF_OUTPUT_PATH}/examples/${PARENT_DIRNAME}/${BASE_DIRNAME}
)

# copy assets required for example
of_copy_directory_if_changed(${BASE_DIRNAME} ${BASE_DIR}/bin ${OF_OUTPUT_PATH}/examples/${PARENT_DIRNAME}/${BASE_DIRNAME})