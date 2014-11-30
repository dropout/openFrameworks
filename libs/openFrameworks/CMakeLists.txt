include(${CMAKE_SOURCE_DIR}/cmake/Macros.cmake)
include(CMakePackageConfigHelpers)

# project name
project(openFrameworks)

# configure cmake to know about additional library dirs common for all platforms
set(CMAKE_PREFIX_PATH
	${OF_LIBS_DIR}/poco/lib/${OF_PLATFORM_STRING}
	${OF_LIBS_DIR}/glfw/lib/${OF_PLATFORM_STRING}
	${OF_LIBS_DIR}/tess2/lib/${OF_PLATFORM_STRING}
)

set(CMAKE_INCLUDE_PATH
	${OF_LIBS_DIR}/poco/include/
	${OF_LIBS_DIR}/glfw/include/
	${OF_LIBS_DIR}/tess2/include/
)

# platform specific libraries hints
if (OF_OS_LINUX)

	set(CMAKE_PREFIX_PATH
		${CMAKE_PREFIX_PATH}		
		${OF_LIBS_DIR}/kiss/lib/${OF_PLATFORM_STRING}
	)

	set(CMAKE_INCLUDE_PATH
		${CMAKE_INCLUDE_PATH}		
		${OF_LIBS_DIR}/kiss/include/
	)

endif(OF_OS_LINUX)

# find dependencies
if (OF_OS_LINUX)
	find_package(PkgConfig REQUIRED)
	pkg_check_modules(GTK3 REQUIRED gtk+-3.0)
	find_package(GStreamer REQUIRED)
endif(OF_OS_LINUX)

find_package(Poco REQUIRED)
find_package(OpenGL REQUIRED)
find_package(Glew REQUIRED)
find_package(Fontconfig REQUIRED)
find_package(Freetype REQUIRED)
find_package(Glfw REQUIRED)
find_package(Cairo REQUIRED)
find_package(FreeImage REQUIRED)
find_package(Tesselator REQUIRED)
find_package(Kiss REQUIRED)
find_package(OpenAL REQUIRED)
find_package(OpenSSL REQUIRED)
find_package(Sndfile REQUIRED)
find_package(Udev REQUIRED)

# source files
set(BASEDIR ${PROJECT_SOURCE_DIR})

set(INCLUDE
	${BASEDIR}/3d/of3dPrimitives.h
	${BASEDIR}/3d/of3dUtils.h
	${BASEDIR}/3d/ofCamera.h
	${BASEDIR}/3d/ofEasyCam.h
	${BASEDIR}/3d/ofMesh.h
	${BASEDIR}/3d/ofNode.h
	${BASEDIR}/app/ofAppBaseWindow.h
	#${BASEDIR}/app/ofAppEGLWindow.h
	${BASEDIR}/app/ofAppGLFWWindow.h
	${BASEDIR}/app/ofAppGlutWindow.h
	${BASEDIR}/app/ofAppNoWindow.h	
	${BASEDIR}/app/ofAppRunner.h
	${BASEDIR}/app/ofBaseApp.h
	${BASEDIR}/app/ofIcon.h
	${BASEDIR}/communication/ofArduino.h
	${BASEDIR}/communication/ofSerial.h
	${BASEDIR}/events/ofDelegate.h
	${BASEDIR}/events/ofEvents.h
	${BASEDIR}/events/ofEventUtils.h
	${BASEDIR}/gl/ofFbo.h
	${BASEDIR}/gl/ofGLProgrammableRenderer.h
	${BASEDIR}/gl/ofGLRenderer.h
	${BASEDIR}/gl/ofGLUtils.h
	${BASEDIR}/gl/ofLight.h
	${BASEDIR}/gl/ofMaterial.h
	${BASEDIR}/gl/ofShader.h
	${BASEDIR}/gl/ofTexture.h
	${BASEDIR}/gl/ofVbo.h
	${BASEDIR}/gl/ofVboMesh.h
	${BASEDIR}/graphics/of3dGraphics.h
	${BASEDIR}/graphics/ofBitmapFont.h
	${BASEDIR}/graphics/ofCairoRenderer.h
	${BASEDIR}/graphics/ofGraphics.h
	${BASEDIR}/graphics/ofImage.h
	${BASEDIR}/graphics/ofPath.h
	${BASEDIR}/graphics/ofPixels.h
	${BASEDIR}/graphics/ofPolyline.h
	${BASEDIR}/graphics/ofRendererCollection.h
	${BASEDIR}/graphics/ofTessellator.h
	${BASEDIR}/graphics/ofTrueTypeFont.h
	${BASEDIR}/math/ofMath.h
	${BASEDIR}/math/ofMatrix3x3.h
	${BASEDIR}/math/ofMatrix4x4.h
	${BASEDIR}/math/ofQuaternion.h
	${BASEDIR}/math/ofVec2f.h
	${BASEDIR}/math/ofVec3f.h
	${BASEDIR}/math/ofVec4f.h
	${BASEDIR}/math/ofVectorMath.h
	${BASEDIR}/sound/ofBaseSoundPlayer.h
	${BASEDIR}/sound/ofBaseSoundStream.h
	${BASEDIR}/sound/ofFmodSoundPlayer.h
	${BASEDIR}/sound/ofOpenALSoundPlayer.h
	${BASEDIR}/sound/ofRtAudioSoundStream.h
	${BASEDIR}/sound/ofSoundPlayer.h
	${BASEDIR}/sound/ofSoundStream.h	
	${BASEDIR}/types/ofBaseTypes.h
	${BASEDIR}/types/ofColor.h
	${BASEDIR}/types/ofParameterGroup.h
	${BASEDIR}/types/ofParameter.h
	${BASEDIR}/types/ofPoint.h
	${BASEDIR}/types/ofRectangle.h
	${BASEDIR}/types/ofTypes.h	
	${BASEDIR}/utils/ofConstants.h
	${BASEDIR}/utils/ofFileUtils.h
	${BASEDIR}/utils/ofLog.h
	${BASEDIR}/utils/ofMatrixStack.h
	${BASEDIR}/utils/ofNoise.h
	${BASEDIR}/utils/ofSystemUtils.h
	${BASEDIR}/utils/ofThread.h	
	${BASEDIR}/utils/ofURLFileLoader.h
	${BASEDIR}/utils/ofUtils.h
	${BASEDIR}/utils/ofXml.h	
	${BASEDIR}/video/ofDirectShowGrabber.h
	${BASEDIR}/video/ofGstUtils.h
	${BASEDIR}/video/ofGstVideoGrabber.h
	${BASEDIR}/video/ofGstVideoPlayer.h
	${BASEDIR}/video/ofQTKitGrabber.h
	${BASEDIR}/video/ofQTKitMovieRenderer.h
	${BASEDIR}/video/ofQTKitPlayer.h
	${BASEDIR}/video/ofQtUtils.h
	${BASEDIR}/video/ofQuickTimeGrabber.h
	${BASEDIR}/video/ofQuickTimePlayer.h
	${BASEDIR}/video/ofVideoGrabber.h
	${BASEDIR}/video/ofVideoPlayer.h
	${BASEDIR}/ofMain.h
)

set(SRC
	${BASEDIR}/3d/of3dPrimitives.cpp
	${BASEDIR}/3d/of3dUtils.cpp
	${BASEDIR}/3d/ofCamera.cpp
	${BASEDIR}/3d/ofEasyCam.cpp
	${BASEDIR}/3d/ofMesh.cpp
	${BASEDIR}/3d/ofNode.cpp
	#${BASEDIR}/app/ofAppEGLWindow.cpp
	${BASEDIR}/app/ofAppGLFWWindow.cpp
	${BASEDIR}/app/ofAppGlutWindow.cpp
	${BASEDIR}/app/ofAppNoWindow.cpp
	${BASEDIR}/app/ofAppRunner.cpp
	${BASEDIR}/communication/ofArduino.cpp
	${BASEDIR}/communication/ofSerial.cpp
	${BASEDIR}/events/ofEvents.cpp
	${BASEDIR}/gl/ofFbo.cpp
	${BASEDIR}/gl/ofGLProgrammableRenderer.cpp
	${BASEDIR}/gl/ofGLRenderer.cpp
	${BASEDIR}/gl/ofGLUtils.cpp
	${BASEDIR}/gl/ofLight.cpp
	${BASEDIR}/gl/ofMaterial.cpp
	${BASEDIR}/gl/ofShader.cpp
	${BASEDIR}/gl/ofTexture.cpp
	${BASEDIR}/gl/ofVbo.cpp
	${BASEDIR}/gl/ofVboMesh.cpp
	${BASEDIR}/graphics/of3dGraphics.cpp
	${BASEDIR}/graphics/ofBitmapFont.cpp
	${BASEDIR}/graphics/ofCairoRenderer.cpp
	${BASEDIR}/graphics/ofGraphics.cpp
	${BASEDIR}/graphics/ofImage.cpp
	${BASEDIR}/graphics/ofPath.cpp
	${BASEDIR}/graphics/ofPixels.cpp
	${BASEDIR}/graphics/ofPolyline.cpp
	${BASEDIR}/graphics/ofRendererCollection.cpp
	${BASEDIR}/graphics/ofTessellator.cpp
	${BASEDIR}/graphics/ofTrueTypeFont.cpp
	${BASEDIR}/math/ofMath.cpp
	${BASEDIR}/math/ofMatrix3x3.cpp
	${BASEDIR}/math/ofMatrix4x4.cpp
	${BASEDIR}/math/ofQuaternion.cpp
	${BASEDIR}/math/ofVec2f.cpp
	${BASEDIR}/math/ofVec4f.cpp
	${BASEDIR}/sound/ofFmodSoundPlayer.cpp
	${BASEDIR}/sound/ofOpenALSoundPlayer.cpp
	${BASEDIR}/sound/ofRtAudioSoundStream.cpp
	${BASEDIR}/sound/ofSoundPlayer.cpp
	${BASEDIR}/sound/ofSoundStream.cpp
	${BASEDIR}/types/ofBaseTypes.cpp
	${BASEDIR}/types/ofColor.cpp
	${BASEDIR}/types/ofParameter.cpp
	${BASEDIR}/types/ofParameterGroup.cpp
	${BASEDIR}/types/ofRectangle.cpp
	${BASEDIR}/utils/ofFileUtils.cpp
	${BASEDIR}/utils/ofLog.cpp
	${BASEDIR}/utils/ofMatrixStack.cpp
	${BASEDIR}/utils/ofSystemUtils.cpp
	${BASEDIR}/utils/ofThread.cpp
	${BASEDIR}/utils/ofURLFileLoader.cpp
	${BASEDIR}/utils/ofUtils.cpp
	${BASEDIR}/utils/ofXml.cpp
	${BASEDIR}/video/ofDirectShowGrabber.cpp
	${BASEDIR}/video/ofGstUtils.cpp
	${BASEDIR}/video/ofGstVideoGrabber.cpp
	${BASEDIR}/video/ofGstVideoPlayer.cpp
	#${BASEDIR}/video/ofQTKitGrabber.mm
	#${BASEDIR}/video/ofQTKitMovieRenderer.m
	#${BASEDIR}/video/ofQTKitPlayer.mm
	${BASEDIR}/video/ofQtUtils.cpp
	${BASEDIR}/video/ofQuickTimeGrabber.cpp
	${BASEDIR}/video/ofQuickTimePlayer.cpp
	${BASEDIR}/video/ofVideoGrabber.cpp
	${BASEDIR}/video/ofVideoPlayer.cpp
)

# set of include directories
set(OF_INCLUDE_DIRS

	# core include dirs
	${BASEDIR}
	${BASEDIR}/3d
	${BASEDIR}/app
	${BASEDIR}/communication
	${BASEDIR}/events
	${BASEDIR}/gl
	${BASEDIR}/graphics
	${BASEDIR}/math
	${BASEDIR}/sound
	${BASEDIR}/types
	${BASEDIR}/utils
	${BASEDIR}/video

	# library include dirs
	${OPENGL_INCLUDE_DIR}
	${GLFW_INCLUDE_DIR}
	${GLEW_INCLUDE_DIR}

	${GTK3_INCLUDE_DIRS}	
	${Poco_INCLUDE_DIR}
	${FONTCONFIG_INCLUDE_DIR}
	${FREETYPE_INCLUDE_DIRS}
	
	${GSTREAMER_APP_INCLUDE_DIRS}
	${GSTREAMER_INCLUDE_DIRS}
	${GSTREAMER_VIDEO_INCLUDE_DIRS}
	${GSTREAMER_BASE_INCLUDE_DIRS}	

	${OPENAL_INCLUDE_DIR}
	${SNDFILE_INCLUDE_DIR}	

	${OPENSSL_INCLUDE_DIR}
	${FreeImage_INCLUDE_DIRS}
	${UDEV_INCLUDE_DIR}

	${tesselator_INCLUDE_DIR}
	${kiss_INCLUDE_DIR}



	${OF_LIBS_DIR}/fmodex/include
	${OF_LIBS_DIR}/quicktime/include
	${OF_LIBS_DIR}/rtAudio/include	
	${OF_LIBS_DIR}/videoInput/include

	#CACHE STRING "Openframeworks include directories" FORCE
)

# library target
add_library(openFrameworks STATIC
	${INCLUDE}
	${SRC}
)

# configure target
set_target_properties(openFrameworks PROPERTIES 
	ARCHIVE_OUTPUT_DIRECTORY ${OF_OUTPUT_DIR}/libs/openFrameworks
	LIBRARY_OUTPUT_DIRECTORY ${OF_OUTPUT_DIR}/libs/openFrameworks
)

include_directories(
	${OF_INCLUDE_DIRS}
)

#
set(OF_LIBRARIES

	${GLFW_LIBRARIES}
	${GLEW_LIBRARY}	
	${OPENGL_LIBRARIES}

	${GSTREAMER_APP_LIBRARIES}
	${GSTREAMER_LIBRARIES}
	${GSTREAMER_VIDEO_LIBRARIES}
	${GSTREAMER_BASE_LIBRARIES}
	${UDEV_LIBRARIES}

	${GTK3_LIBRARIES}		
	${Poco_LIBRARIES}

	${FONTCONFIG_LIBRARIES}
	${FREETYPE_LIBRARIES}

	${SNDFILE_LIBRARIES}	
	${OPENAL_LIBRARY}
	${OPENSSL_LIBRARIES}	
	
	${FreeImage_LIBRARIES}
	${CAIRO_LIBRARIES}
	
	${tesselator_LIBRARY}
	
	${kiss_LIBRARY}
	pthread	

	#CACHE STRING "Openframeworks libraries" FORCE	
)

# link dependent libraries
target_link_libraries(openFrameworks
	${OF_LIBRARIES}
)

add_definitions(
	-DOF_USING_GTK
	-D_REENTRANT
)

# Destination of the installed config files (relative path):
set(CMAKE_CONFIG_DEST "share/cmake/Modules")

# Configure template
configure_package_config_file(
	"${BASEDIR}/openframeworks-config.cmake.in"
	# Important to write in CMAKE_BINARY_DIR if you want the registry
	# mechanism to work:
	"${CMAKE_BINARY_DIR}/openframeworks-config.cmake"
	INSTALL_DESTINATION "${CMAKE_CONFIG_DEST}"
	PATH_VARS
		OF_INCLUDE_DIRS
		OF_LIBRARIES
)

export(PACKAGE openFrameworks)

# This file is included in our template:
#export ( TARGETS openFrameworks_LIBRARIES FILE "${CMAKE_BINARY_DIR}/fooTargets.cmake" )


