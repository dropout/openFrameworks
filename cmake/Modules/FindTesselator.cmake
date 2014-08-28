# - Try to find Tesselator 
# Once done, this will define
#
# TESS2_FOUND
# TESS2_INCLUDE_DIR
# TESS2_LIBRARY

#include(FindPackageHandleStandardArgs)
include(${CMAKE_SOURCE_DIR}/cmake/LibFindMacros.cmake)

# Dependencies
#libfind_package(Magick++ Magick)

# Use pkg-config to get hints about paths
#libfind_pkg_check_modules(Magick++_PKGCONF ImageMagick++)

# Include dir
find_path(tesselator_INCLUDE_DIR
  NAMES tesselator.h
)

# Finally the library itself
find_library(tesselator_LIBRARY
  NAMES tess2
)

# Set the include dir variables and the libraries and let libfind_process do the rest.
# NOTE: Singular variables for this library, plural for libraries this this lib depends on.
#set(tesselator_PROCESS_INCLUDES 
#    tesselator_INCLUDE_DIR
#    tesselator_INCLUDE_DIRS    
#)
#set(tesselator_PROCESS_LIBS 
#    tesselator_LIBRARY
#    tesselator_LIBRARIES
#)

libfind_process(tesselator)

#find_package_handle_standard_args(TESS2
#    REQUIRED_VARS
#    TESS2_INCLUDE_DIR
#    TESS2_LIBRARY
#)



#if (${CMAKE_HOST_UNIX})

    # find_path( TESS2_INCLUDE_DIR
    #     NAMES
    #         tesselator.h
    #     PATHS
    #         ${TESS2_LOCATION}/include
    #         $ENV{GLEW_LOCATION}/include
    #         /usr/include
    #         /usr/local/include
    #         /sw/include
    #         /opt/local/include
    #         NO_DEFAULT_PATH
    #         DOC "The directory where GL/glew.h resides"
    # )

    # find_library( TESS2_LIBRARY
    #     NAMES
    #         TESS2 tess2
    #     PATHS
    #         ${TESS2_LOCATION}/lib/linux64
    #         $ENV{GLEW_LOCATION}/lib
    #         /usr/lib64
    #         /usr/lib
    #         /usr/lib/${CMAKE_LIBRARY_ARCHITECTURE}
    #         /usr/local/lib64
    #         /usr/local/lib
    #         /sw/lib
    #         /opt/local/lib
    #         NO_DEFAULT_PATH
    #         DOC "The GLEW library"
    #   )
#endif ()

#if (TESS2_INCLUDE_DIR AND EXISTS "${TESS2_INCLUDE_DIR}/GL/glew.h")

#   file(STRINGS "${TESS2_INCLUDE_DIR}/GL/glew.h" GLEW_4_2 REGEX "^#define GL_VERSION_4_2.*$")
#   if (GLEW_4_2)
#       set(OPENGL_4_2_FOUND TRUE)
#   else ()
#       message(INFO
#       "glew-1.7.0 or newer needed for supporting OpenGL 4.2 dependent features"
#       )
#   endif ()

#   file(STRINGS "${TESS2_INCLUDE_DIR}/GL/glew.h" GLEW_4_3 REGEX "^#define GL_VERSION_4_3.*$")
#   if (GLEW_4_3)
#       SET(OPENGL_4_3_FOUND TRUE)
#   else ()
#       message(INFO
#       "glew-1.9.0 or newer needed for supporting OpenGL 4.3 dependent features"
#       )
#   endif ()

#endif ()

#find_package_handle_standard_args(TESS2
#    REQUIRED_VARS
#        TESS2_INCLUDE_DIR
#        TESS2_LIBRARY
#)
