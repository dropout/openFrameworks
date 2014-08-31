include(${CMAKE_SOURCE_DIR}/cmake/Macros.cmake)

# project name
project(ofxOpenCv)

# source files
set(BASEDIR ${PROJECT_SOURCE_DIR})

set(INCLUDE
	${BASEDIR}/src/ofxCvBlob.h
	${BASEDIR}/src/ofxCvColorImage.h
	${BASEDIR}/src/ofxCvConstants.h
	${BASEDIR}/src/ofxCvContourFinder.h
	${BASEDIR}/src/ofxCvFloatImage.h
	${BASEDIR}/src/ofxCvGrayscaleImage.h
	${BASEDIR}/src/ofxCvHaarFinder.h
	${BASEDIR}/src/ofxCvImage.h
	${BASEDIR}/src/ofxCvShortImage.h
	${BASEDIR}/src/ofxOpenCv.h
)

set(SRC
	${BASEDIR}/src/ofxCvColorImage.cpp
	${BASEDIR}/src/ofxCvContourFinder.cpp
	${BASEDIR}/src/ofxCvFloatImage.cpp
	${BASEDIR}/src/ofxCvGrayscaleImage.cpp
	${BASEDIR}/src/ofxCvHaarFinder.cpp
	${BASEDIR}/src/ofxCvImage.cpp
	${BASEDIR}/src/ofxCvShortImage.cpp
)
