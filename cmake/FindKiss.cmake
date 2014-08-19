# Once done this will define
#
# TESS2_INCLUDE_DIR
# TESS2_LIBRARY

include(FindPackageHandleStandardArgs)

find_path( KISS_INCLUDE_DIR
	NAMES
		kiss_fft.h
	PATHS
		${KISS_LOCATION}/include
		NO_DEFAULT_PATH
	DOC "The directory where kiss.fft resides"
)

find_library( KISS_LIBRARY
	NAMES
		kiss
	PATHS
		${KISS_LOCATION}/lib/linux64
		NO_DEFAULT_PATH
	DOC "The GLEW library"
)

find_package_handle_standard_args( KISS
	REQUIRED_VARS
		KISS_INCLUDE_DIR
		KISS_LIBRARY
)
