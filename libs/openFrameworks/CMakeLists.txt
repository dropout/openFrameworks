include(${CMAKE_SOURCE_DIR}/cmake/Macros.cmake)

# project name
project(openFrameworks)

# configure find_package behaviour
#set(GLFW_LOCATION ${CMAKE_SOURCE_DIR}/libs)

# find dependencies
find_package(PkgConfig REQUIRED)
pkg_check_modules(GTK3 REQUIRED gtk+-3.0)
find_package(GStreamer REQUIRED "0.10.20")

#set(Poco_INCLUDE_DIR ${CMAKE_SOURCE_DIR}/libs/poco)
set(POCO_LOCATION ${CMAKE_SOURCE_DIR}/libs/poco)
find_package(Poco REQUIRED)

find_package(OpenGL REQUIRED)
find_package(Glew REQUIRED)

set(GLFW_LOCATION ${CMAKE_SOURCE_DIR}/libs/glfw)
find_package(Glfw REQUIRED)

# find cairo
find_package(Cairo REQUIRED)

# find freeimage
find_package(FreeImage REQUIRED)

# find tess2
set(TESS2_LOCATION ${CMAKE_SOURCE_DIR}/libs/tess2)
find_package(Tesselator REQUIRED)

# find openal
find_package(OpenAL REQUIRED)

# find openssl
find_package(OpenSSL REQUIRED)

# find openssl
find_package(Sndfile REQUIRED)

# find openssl
#find_package(Xcursor REQUIRED)

# find openssl
set(KISS_LOCATION ${CMAKE_SOURCE_DIR}/libs/kiss)
find_package(Kiss REQUIRED)

# source files
set(BASEDIR ${PROJECT_SOURCE_DIR})

set(INCLUDE

	# 3d
	${BASEDIR}/3d/of3dPrimitives.h
	${BASEDIR}/3d/of3dUtils.h
	${BASEDIR}/3d/ofCamera.h
	${BASEDIR}/3d/ofEasyCam.h
	${BASEDIR}/3d/ofMesh.h
	${BASEDIR}/3d/ofNode.h

	# app
	${BASEDIR}/app/ofAppBaseWindow.h
	#${BASEDIR}/app/ofAppEGLWindow.h
	${BASEDIR}/app/ofAppGLFWWindow.h
	${BASEDIR}/app/ofAppGlutWindow.h
	${BASEDIR}/app/ofAppNoWindow.h	
	${BASEDIR}/app/ofAppRunner.h
	${BASEDIR}/app/ofBaseApp.h
	${BASEDIR}/app/ofIcon.h

	# communication
	${BASEDIR}/communication/ofArduino.h
	${BASEDIR}/communication/ofSerial.h

	# events
	${BASEDIR}/events/ofDelegate.h
	${BASEDIR}/events/ofEvents.h
	${BASEDIR}/events/ofEventUtils.h

	# gl
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

	# graphics
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

	# math
	${BASEDIR}/math/ofMath.h
	${BASEDIR}/math/ofMatrix3x3.h
	${BASEDIR}/math/ofMatrix4x4.h
	${BASEDIR}/math/ofQuaternion.h
	${BASEDIR}/math/ofVec2f.h
	${BASEDIR}/math/ofVec3f.h
	${BASEDIR}/math/ofVec4f.h
	${BASEDIR}/math/ofVectorMath.h

	# sound
	${BASEDIR}/sound/ofBaseSoundPlayer.h
	${BASEDIR}/sound/ofBaseSoundStream.h
	${BASEDIR}/sound/ofFmodSoundPlayer.h
	${BASEDIR}/sound/ofOpenALSoundPlayer.h
	${BASEDIR}/sound/ofRtAudioSoundStream.h
	${BASEDIR}/sound/ofSoundPlayer.h
	${BASEDIR}/sound/ofSoundStream.h	

	# types
	${BASEDIR}/types/ofBaseTypes.h
	${BASEDIR}/types/ofColor.h
	${BASEDIR}/types/ofParameterGroup.h
	${BASEDIR}/types/ofParameter.h
	${BASEDIR}/types/ofPoint.h
	${BASEDIR}/types/ofRectangle.h
	${BASEDIR}/types/ofTypes.h	

	# utils
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

	# video
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

	# ofMain
	${BASEDIR}/ofMain.h
)


set(SRC

	# 3d
	${BASEDIR}/3d/of3dPrimitives.cpp
	${BASEDIR}/3d/of3dUtils.cpp
	${BASEDIR}/3d/ofCamera.cpp
	${BASEDIR}/3d/ofEasyCam.cpp
	${BASEDIR}/3d/ofMesh.cpp
	${BASEDIR}/3d/ofNode.cpp

	# app
	#${BASEDIR}/app/ofAppEGLWindow.cpp
	${BASEDIR}/app/ofAppGLFWWindow.cpp
	${BASEDIR}/app/ofAppGlutWindow.cpp
	${BASEDIR}/app/ofAppNoWindow.cpp
	${BASEDIR}/app/ofAppRunner.cpp

	# communication
	${BASEDIR}/communication/ofArduino.cpp
	${BASEDIR}/communication/ofSerial.cpp

	# events
	${BASEDIR}/events/ofEvents.cpp

	# gl
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

	# graphics
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

	# math
	${BASEDIR}/math/ofMath.cpp
	${BASEDIR}/math/ofMatrix3x3.cpp
	${BASEDIR}/math/ofMatrix4x4.cpp
	${BASEDIR}/math/ofQuaternion.cpp
	${BASEDIR}/math/ofVec2f.cpp
	${BASEDIR}/math/ofVec4f.cpp

	# sound
	${BASEDIR}/sound/ofFmodSoundPlayer.cpp
	${BASEDIR}/sound/ofOpenALSoundPlayer.cpp
	${BASEDIR}/sound/ofRtAudioSoundStream.cpp
	${BASEDIR}/sound/ofSoundPlayer.cpp
	${BASEDIR}/sound/ofSoundStream.cpp

	# types
	${BASEDIR}/types/ofBaseTypes.cpp
	${BASEDIR}/types/ofColor.cpp
	${BASEDIR}/types/ofParameter.cpp
	${BASEDIR}/types/ofParameterGroup.cpp
	${BASEDIR}/types/ofRectangle.cpp

	# utils
	${BASEDIR}/utils/ofFileUtils.cpp
	${BASEDIR}/utils/ofLog.cpp
	${BASEDIR}/utils/ofMatrixStack.cpp
	${BASEDIR}/utils/ofSystemUtils.cpp
	${BASEDIR}/utils/ofThread.cpp
	${BASEDIR}/utils/ofURLFileLoader.cpp
	${BASEDIR}/utils/ofUtils.cpp
	${BASEDIR}/utils/ofXml.cpp

	# video
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

# set include dirs
set(OF_INCLUDE_DIRS

	# core
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

	# libs
	#${OF_LIBS_DIR}/FreeImage/include
	#${OF_LIBS_DIR}/cairo/include
	#${OF_LIBS_DIR}/cairo/include/cairo
	${OF_LIBS_DIR}/fmodex/include
	${OF_LIBS_DIR}/freetype/include
	${OF_LIBS_DIR}/freetype/include/freetype2
	${OF_LIBS_DIR}/glew/include
	${OF_LIBS_DIR}/glfw/include
	${OF_LIBS_DIR}/glu/include
	${OF_LIBS_DIR}/glut/include
	#${OF_LIBS_DIR}/kiss/include
	#${OF_LIBS_DIR}/openssl/include
	#${OF_LIBS_DIR}/poco/include
	${OF_LIBS_DIR}/quicktime/include
	${OF_LIBS_DIR}/rtAudio/include	
	#${OF_LIBS_DIR}/tess2/include
	${OF_LIBS_DIR}/videoInput/include
	
	${OPENGL_INCLUDE_DIR}
	${GLFW_INCLUDE_DIR}
	${GLEW_INCLUDE_DIR}
	${GTK3_INCLUDE_DIRS}
	${OPENSSL_INCLUDE_DIR}
	${Poco_INCLUDE_DIR}
	${GSTREAMER_INCLUDE_DIR}
	${FreeImage_INCLUDE_DIRS}
	${OPENAL_INCLUDE_DIR}
	${TESS2_INCLUDE_DIR}
	${SNDFILE_INCLUDE_DIR}
	${KISS_INCLUDE_DIR}
#	${XCURSOR_INCLUDE_DIRS}

	CACHE STRING "Description"
)

# library target
add_library(openFrameworks
	${INCLUDE}
	${SRC}
)

include_directories(
	${OF_INCLUDE_DIRS}
)

#
set(OF_LIBRARIES		
	${GLFW_LIBRARIES}
	${GLEW_LIBRARY}	
	${OPENGL_LIBRARIES}
	
	${Poco_LIBRARIES}
	${OPENSSL_LIBRARIES}	
	${FreeImage_LIBRARIES}
	${CAIRO_LIBRARIES}
	${OPENAL_LIBRARY}
	${TESS2_LIBRARY}
	${SNDFILE_LIBRARIES}	
	${KISS_LIBRARY}
#	${XCURSOR_LIBRARIES}
	pthread	

	CACHE STRING "Description"
)

OF_print_var( OF_INCLUDE_DIRS )
OF_print_var( OF_LIBRARIES )

OF_print_var( OF_INCLUDE_DIRS )
OF_print_var( Poco_INCLUDE_DIR )


# link dependent libraries
target_link_libraries(openFrameworks
	${OF_LIBRARIES}
)

add_definitions(
	-DOF_USING_GTK 
	-D_REENTRANT
)

# Configure OGLPlus library
#add_definitions(-DOGLPLUS_USE_GLCOREARB_H=0 -DOGLPLUS_USE_GLEW=1 -DGLM_FORCE_RADIANS)
#add_definitions(-DOF_TARGET_LINUX=1)
#add_definitions(-DGST_DISABLE_DEPRECATED=1)



#install(TARGETS openFrameworks DESTINATION ${CMAKE_SOURCE_DIR}/bin)
#install(FILES ${HEADER} DESTINATION include/${DIR})

# configure target
#set_target_properties(openFrameworks PROPERTIES 
#	ARCHIVE_OUTPUT_DIRECTORY ${LAB_LIBS_LIB_DIR}
#	LIBRARY_OUTPUT_DIRECTORY ${LAB_LIBS_LIB_DIR}
#)