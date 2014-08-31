# Once done, this will define
#
# kiss_FOUND
# kiss_INCLUDE_DIR
# kiss_LIBRARY

include(${CMAKE_SOURCE_DIR}/cmake/LibFindMacros.cmake)

# Include dir
find_path(kiss_INCLUDE_DIR
  NAMES kiss_fft.h
)

# Library itself
find_library(kiss_LIBRARY
  NAMES kiss
)

libfind_process(kiss)
