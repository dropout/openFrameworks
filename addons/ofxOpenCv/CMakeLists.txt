include(${CMAKE_SOURCE_DIR}/cmake/Macros.cmake)

# project name
project(ofxOpenCv)

# project home helper
set(BASE_DIR ${PROJECT_SOURCE_DIR})

# headers
set(INCLUDE
	${BASE_DIR}/src/ofxCvBlob.h
	${BASE_DIR}/src/ofxCvColorImage.h
	${BASE_DIR}/src/ofxCvConstants.h
	${BASE_DIR}/src/ofxCvContourFinder.h
	${BASE_DIR}/src/ofxCvFloatImage.h
	${BASE_DIR}/src/ofxCvGrayscaleImage.h
	${BASE_DIR}/src/ofxCvHaarFinder.h
	${BASE_DIR}/src/ofxCvImage.h
	${BASE_DIR}/src/ofxCvShortImage.h
	${BASE_DIR}/src/ofxOpenCv.h
)

# source files
set(SRC
	${BASE_DIR}/src/ofxCvColorImage.cpp
	${BASE_DIR}/src/ofxCvContourFinder.cpp
	${BASE_DIR}/src/ofxCvFloatImage.cpp
	${BASE_DIR}/src/ofxCvGrayscaleImage.cpp
	${BASE_DIR}/src/ofxCvHaarFinder.cpp
	${BASE_DIR}/src/ofxCvImage.cpp
	${BASE_DIR}/src/ofxCvShortImage.cpp
)

# find openFrameworks with the help of the 
# generated project config file
set(openFrameworks_DIR ${CMAKE_BINARY_DIR}) 
find_package(openFrameworks REQUIRED)

# specify target
add_library(ofxOpenCv STATIC
	${INCLUDE}
	${SRC}	
)

# header file locations
set(INCLUDE_DIRS
	${BASE_DIR}/src
	${BASE_DIR}/libs/opencv/include
	${BASE_DIR}/libs/opencv/include/opencv
	${openFrameworks_INCLUDE_DIRS}
)

include_directories(${INCLUDE_DIRS})

# link libraries
set(LIBRARIES	
	${openFrameworks_LIBRARIES}
	
	#${BASE_DIR}/libs/opencv/lib/${OF_PLATFORM_STRING}/libopencv_legacy.a
	${BASE_DIR}/libs/opencv/lib/${OF_PLATFORM_STRING}/libopencv_haartraining_engine.a
	${BASE_DIR}/libs/opencv/lib/${OF_PLATFORM_STRING}/libopencv_calib3d.a
	${BASE_DIR}/libs/opencv/lib/${OF_PLATFORM_STRING}/libopencv_objdetect.a
	${BASE_DIR}/libs/opencv/lib/${OF_PLATFORM_STRING}/libopencv_features2d.a
	${BASE_DIR}/libs/opencv/lib/${OF_PLATFORM_STRING}/libopencv_video.a
	${BASE_DIR}/libs/opencv/lib/${OF_PLATFORM_STRING}/libopencv_imgproc.a
	${BASE_DIR}/libs/opencv/lib/${OF_PLATFORM_STRING}/libopencv_highgui.a
	${BASE_DIR}/libs/opencv/lib/${OF_PLATFORM_STRING}/libopencv_ml.a	
	${BASE_DIR}/libs/opencv/lib/${OF_PLATFORM_STRING}/libopencv_legacy.a
	
	${BASE_DIR}/libs/opencv/lib/${OF_PLATFORM_STRING}/libopencv_flann.a
	${BASE_DIR}/libs/opencv/lib/${OF_PLATFORM_STRING}/libopencv_contrib.a
	${BASE_DIR}/libs/opencv/lib/${OF_PLATFORM_STRING}/libopencv_gpu.a
	${BASE_DIR}/libs/opencv/lib/${OF_PLATFORM_STRING}/libopencv_core.a
	

	
#	${BASE_DIR}/libs/opencv/lib/${OF_PLATFORM_STRING}/libopencv_legacy.a
#	${BASE_DIR}/libs/opencv/lib/${OF_PLATFORM_STRING}/libopencv_haartraining_engine.a
#	${BASE_DIR}/libs/opencv/lib/${OF_PLATFORM_STRING}/libopencv_calib3d.a
#	${BASE_DIR}/libs/opencv/lib/${OF_PLATFORM_STRING}/libopencv_objdetect.a
#	${BASE_DIR}/libs/opencv/lib/${OF_PLATFORM_STRING}/libopencv_features2d.a
#	${BASE_DIR}/libs/opencv/lib/${OF_PLATFORM_STRING}/libopencv_video.a
#	${BASE_DIR}/libs/opencv/lib/${OF_PLATFORM_STRING}/libopencv_imgproc.a
#	${BASE_DIR}/libs/opencv/lib/${OF_PLATFORM_STRING}/libopencv_highgui.a
#	${BASE_DIR}/libs/opencv/lib/${OF_PLATFORM_STRING}/libopencv_ml.a	
#	${BASE_DIR}/libs/opencv/lib/${OF_PLATFORM_STRING}/libopencv_legacy.a
#	${BASE_DIR}/libs/opencv/lib/${OF_PLATFORM_STRING}/libopencv_core.a
#	${BASE_DIR}/libs/opencv/lib/${OF_PLATFORM_STRING}/libopencv_flann.a
#	${BASE_DIR}/libs/opencv/lib/${OF_PLATFORM_STRING}/libopencv_contrib.a
#	${BASE_DIR}/libs/opencv/lib/${OF_PLATFORM_STRING}/libopencv_gpu.a
	
	
	
	

	
	
	
	
	
	
)

target_link_libraries(ofxOpenCv 
	openFrameworks
	${LIBRARIES}
)

# Destination of the installed config files (relative path):
set(CMAKE_CONFIG_DEST "share/cmake/Modules")

# Configure template
configure_package_config_file(
	"${CMAKE_SOURCE_DIR}/addons/addon-config.cmake.in"
	# Important to write in CMAKE_BINARY_DIR if you want the registry
	# mechanism to work:
	"${CMAKE_BINARY_DIR}/ofxopencv-config.cmake"
	INSTALL_DESTINATION "${CMAKE_CONFIG_DEST}"
	PATH_VARS
		INCLUDE_DIRS
		LIBRARIES
)

export(PACKAGE ofxOpenCv)

# This file is included in our template:
#export ( TARGETS openFrameworks_LIBRARIES FILE "${CMAKE_BINARY_DIR}/fooTargets.cmake" )
