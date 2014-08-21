# Once done this will define
#
# OPENCV_ADDON_FOUND
# OPENCV_ADDON_INCLUDE_DIR
# OPENCV_ADDON_LIBRARIES

include(FindPackageHandleStandardArgs)

#if (${CMAKE_HOST_UNIX})

    find_path( OPENCV_ADDON_INCLUDE_DIR
        NAMES
            tesselator.h
        PATHS
            ${TESS2_LOCATION}/include
            $ENV{GLEW_LOCATION}/include
            /usr/include
            /usr/local/include
            /sw/include
            /opt/local/include
            NO_DEFAULT_PATH
            DOC "The directory where GL/glew.h resides"
    )

    find_library( TESS2_LIBRARY
        NAMES
            ofxOpenCvAddon tess2
        PATHS
            ${TESS2_LOCATION}/lib/linux64
            $ENV{GLEW_LOCATION}/lib
            /usr/lib64
            /usr/lib
            /usr/lib/${CMAKE_LIBRARY_ARCHITECTURE}
            /usr/local/lib64
            /usr/local/lib
            /sw/lib
            /opt/local/lib
            NO_DEFAULT_PATH
            DOC "The GLEW library"
      )
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

find_package_handle_standard_args(TESS2
    REQUIRED_VARS
        TESS2_INCLUDE_DIR
        TESS2_LIBRARY
)
