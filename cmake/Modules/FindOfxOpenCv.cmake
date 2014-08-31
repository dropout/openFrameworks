# Once done, this will define
#
# ofxOpenCv_FOUND
# ofxOpenCv_INCLUDE_DIR
# ofxOpenCv_LIBRARY

include(${CMAKE_SOURCE_DIR}/cmake/LibFindMacros.cmake)

# Include dir
find_path(ofxOpenCv_INCLUDE_DIR
  NAMES tesselator.h
)

# Library itself
find_library(ofxOpenCv_LIBRARY
  NAMES tess2
)

libfind_process(tesselator)
