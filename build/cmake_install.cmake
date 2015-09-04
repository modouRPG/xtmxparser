# Install script for directory: /home/xud/github/tmxparser

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tmxparser" TYPE FILE FILES
    "/home/xud/github/tmxparser/src/TmxPoint.h"
    "/home/xud/github/tmxparser/src/TmxMap.h"
    "/home/xud/github/tmxparser/src/TmxEllipse.h"
    "/home/xud/github/tmxparser/src/TmxObjectGroup.h"
    "/home/xud/github/tmxparser/src/base64/base64.h"
    "/home/xud/github/tmxparser/src/TmxUtil.h"
    "/home/xud/github/tmxparser/src/TmxTerrain.h"
    "/home/xud/github/tmxparser/src/TmxLayer.h"
    "/home/xud/github/tmxparser/src/TmxPropertySet.h"
    "/home/xud/github/tmxparser/src/TmxImage.h"
    "/home/xud/github/tmxparser/src/TmxTile.h"
    "/home/xud/github/tmxparser/src/TmxImageLayer.h"
    "/home/xud/github/tmxparser/src/TmxPolyline.h"
    "/home/xud/github/tmxparser/src/TmxTerrainArray.h"
    "/home/xud/github/tmxparser/src/TmxObject.h"
    "/home/xud/github/tmxparser/src/TmxTileset.h"
    "/home/xud/github/tmxparser/src/TmxMapTile.h"
    "/home/xud/github/tmxparser/src/TmxTileLayer.h"
    "/home/xud/github/tmxparser/src/TmxTileOffset.h"
    "/home/xud/github/tmxparser/src/TmxPolygon.h"
    "/home/xud/github/tmxparser/build/Tmx.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libtmxparser.so.2.0.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libtmxparser.so.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libtmxparser.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/xud/github/tmxparser/build/libtmxparser.so.2.0.1"
    "/home/xud/github/tmxparser/build/libtmxparser.so.2"
    "/home/xud/github/tmxparser/build/libtmxparser.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libtmxparser.so.2.0.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libtmxparser.so.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libtmxparser.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/xud/github/tmxparser/build/libtmxparser.a")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/xud/github/tmxparser/build/tmxparser.pc")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

file(WRITE "/home/xud/github/tmxparser/build/${CMAKE_INSTALL_MANIFEST}" "")
foreach(file ${CMAKE_INSTALL_MANIFEST_FILES})
  file(APPEND "/home/xud/github/tmxparser/build/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
endforeach()
