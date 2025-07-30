# Install script for directory: /home/developer/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fltk-sys-1.5.10/cfltk

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/build/fltk/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/lib/libcfltk.a")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/lib" TYPE STATIC_LIBRARY FILES "/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/build/libcfltk.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/include/cfltk/cfl.h;/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/include/cfltk/cfl_box.h;/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/include/cfltk/cfl_browser.h;/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/include/cfltk/cfl_button.h;/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/include/cfltk/cfl_dialog.h;/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/include/cfltk/cfl_draw.h;/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/include/cfltk/cfl_enums.h;/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/include/cfltk/cfl_group.h;/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/include/cfltk/cfl_image.h;/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/include/cfltk/cfl_input.h;/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/include/cfltk/cfl_lock.h;/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/include/cfltk/cfl_macros.h;/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/include/cfltk/cfl_menu.h;/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/include/cfltk/cfl_misc.h;/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/include/cfltk/cfl_prefs.h;/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/include/cfltk/cfl_printer.h;/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/include/cfltk/cfl_surface.h;/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/include/cfltk/cfl_table.h;/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/include/cfltk/cfl_term.h;/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/include/cfltk/cfl_text.h;/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/include/cfltk/cfl_tree.h;/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/include/cfltk/cfl_utils.h;/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/include/cfltk/cfl_valuator.h;/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/include/cfltk/cfl_widget.h;/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/include/cfltk/cfl_widget.hpp;/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/include/cfltk/cfl_window.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/include/cfltk" TYPE FILE FILES
    "/home/developer/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fltk-sys-1.5.10/cfltk/include/cfl.h"
    "/home/developer/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fltk-sys-1.5.10/cfltk/include/cfl_box.h"
    "/home/developer/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fltk-sys-1.5.10/cfltk/include/cfl_browser.h"
    "/home/developer/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fltk-sys-1.5.10/cfltk/include/cfl_button.h"
    "/home/developer/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fltk-sys-1.5.10/cfltk/include/cfl_dialog.h"
    "/home/developer/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fltk-sys-1.5.10/cfltk/include/cfl_draw.h"
    "/home/developer/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fltk-sys-1.5.10/cfltk/include/cfl_enums.h"
    "/home/developer/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fltk-sys-1.5.10/cfltk/include/cfl_group.h"
    "/home/developer/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fltk-sys-1.5.10/cfltk/include/cfl_image.h"
    "/home/developer/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fltk-sys-1.5.10/cfltk/include/cfl_input.h"
    "/home/developer/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fltk-sys-1.5.10/cfltk/include/cfl_lock.h"
    "/home/developer/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fltk-sys-1.5.10/cfltk/include/cfl_macros.h"
    "/home/developer/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fltk-sys-1.5.10/cfltk/include/cfl_menu.h"
    "/home/developer/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fltk-sys-1.5.10/cfltk/include/cfl_misc.h"
    "/home/developer/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fltk-sys-1.5.10/cfltk/include/cfl_prefs.h"
    "/home/developer/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fltk-sys-1.5.10/cfltk/include/cfl_printer.h"
    "/home/developer/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fltk-sys-1.5.10/cfltk/include/cfl_surface.h"
    "/home/developer/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fltk-sys-1.5.10/cfltk/include/cfl_table.h"
    "/home/developer/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fltk-sys-1.5.10/cfltk/include/cfl_term.h"
    "/home/developer/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fltk-sys-1.5.10/cfltk/include/cfl_text.h"
    "/home/developer/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fltk-sys-1.5.10/cfltk/include/cfl_tree.h"
    "/home/developer/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fltk-sys-1.5.10/cfltk/include/cfl_utils.h"
    "/home/developer/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fltk-sys-1.5.10/cfltk/include/cfl_valuator.h"
    "/home/developer/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fltk-sys-1.5.10/cfltk/include/cfl_widget.h"
    "/home/developer/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fltk-sys-1.5.10/cfltk/include/cfl_widget.hpp"
    "/home/developer/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fltk-sys-1.5.10/cfltk/include/cfl_window.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/share/cmake/cfltk/cfltkConfig.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/share/cmake/cfltk/cfltkConfig.cmake"
         "/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/build/CMakeFiles/Export/2924eba17617429029b63df573cdb94f/cfltkConfig.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/share/cmake/cfltk/cfltkConfig-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/share/cmake/cfltk/cfltkConfig.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/share/cmake/cfltk/cfltkConfig.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/share/cmake/cfltk" TYPE FILE FILES "/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/build/CMakeFiles/Export/2924eba17617429029b63df573cdb94f/cfltkConfig.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/share/cmake/cfltk/cfltkConfig-debug.cmake")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/share/cmake/cfltk" TYPE FILE FILES "/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/build/CMakeFiles/Export/2924eba17617429029b63df573cdb94f/cfltkConfig-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/share/cmake/cfltk/cfltkConfigVersion.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/share/cmake/cfltk" TYPE FILE FILES "/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/build/cfltkConfigVersion.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/share/pkgconfig/cfltk.pc")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/share/pkgconfig" TYPE FILE FILES "/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/build/cfltk.pc")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/developer/rust/morse/target/debug/build/fltk-sys-3f6de8dcf7140d04/out/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
