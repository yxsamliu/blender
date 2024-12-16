# SPDX-FileCopyrightText: 2023 Blender Authors
#
# SPDX-License-Identifier: GPL-2.0-or-later

##################################################################################################
#
# This is a build system used by platform maintainers to build library dependencies.
# For users building Blender, we recommend using the pre-compiled libraries from `lib/`
# on all platforms.
#
# This CMake project is usually built through wrappers:
# * Windows: `build_files/build_environment/windows/build_deps.cmd`.
# * macOS and Linux: `make deps` from the blender directory.
#
##################################################################################################

cmake_minimum_required(VERSION 3.5)
project("BlenderDependencies")
if(POLICY CMP0135)
  cmake_policy(SET CMP0135 NEW) # CMake 3.24+ Set the date/time for extracted files to time of extraction
endif()
include(ExternalProject)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/../cmake/Modules")

include(cmake/check_software.cmake)
include(cmake/options.cmake)
# `versions.cmake` needs to be included after `options.cmake`
# due to the `BLENDER_PLATFORM_ARM` variable being needed.
include(cmake/versions.cmake)
include(cmake/boost_build_options.cmake)
include(cmake/download.cmake)
include(cmake/macros.cmake)
# `setup_msys2.cmake` to install `perl`,
# which HIP needs to function for the compiler detection to work properly,
# hence needs to be included before `check_compilers.cmake`.
if(ENABLE_MSYS2)
  include(cmake/setup_msys2.cmake)
else()
  set(mingw_LIBDIR ${LIBDIR})
endif()
include(cmake/check_compilers.cmake)
include(cmake/harvest.cmake)

include(cmake/hiprt.cmake)
