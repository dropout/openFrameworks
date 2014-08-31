# Once done, this will define
#
# tesselator_FOUND
# tesselator_INCLUDE_DIR
# tesselator_LIBRARY

include(${CMAKE_SOURCE_DIR}/cmake/LibFindMacros.cmake)

# Include dir
find_path(tesselator_INCLUDE_DIR
  NAMES tesselator.h
)

# Library itself
find_library(tesselator_LIBRARY
  NAMES tess2
)

libfind_process(tesselator)
