# SPDX-FileCopyrightText: 2021-2023 Blender Authors
#
# SPDX-License-Identifier: GPL-2.0-or-later

## Update and uncomment this in the release branch
# set(BLENDER_VERSION 3.1)

function(download_source dep)
  set(TARGET_FILE ${${dep}_FILE})
  set(TARGET_HASH_TYPE ${${dep}_HASH_TYPE})
  set(TARGET_HASH ${${dep}_HASH})
  if(PACKAGE_USE_UPSTREAM_SOURCES)
    set(TARGET_URI  ${${dep}_URI})
  elseif(BLENDER_VERSION)
    set(TARGET_URI https://projects.blender.org/blender/lib-source/media/branch/blender-v${BLENDER_VERSION}-release/${TARGET_FILE})
  else()
    set(TARGET_URI https://projects.blender.org/blender/lib-source/media/branch/main/${TARGET_FILE})
  endif()
  # Validate all required variables are set and give an explicit error message
  # rather than CMake erroring out later on with a more ambigious error.
  if(NOT DEFINED TARGET_FILE)
    message(FATAL_ERROR "${dep}_FILE variable not set")
  endif()
  if(NOT DEFINED TARGET_HASH)
    message(FATAL_ERROR "${dep}_HASH variable not set")
  endif()
  if(NOT DEFINED TARGET_HASH_TYPE)
    message(FATAL_ERROR "${dep}_HASH_TYPE variable not set")
  endif()
  if(NOT DEFINED TARGET_URI)
    message(FATAL_ERROR "${dep}_URI variable not set")
  endif()
  set(TARGET_FILE ${PACKAGE_DIR}/${TARGET_FILE})
  message("Checking source : ${dep} (${TARGET_FILE})")
  if(NOT EXISTS ${TARGET_FILE})
    message("Checking source : ${dep} - source not found downloading from ${TARGET_URI}")
    file(
      DOWNLOAD ${TARGET_URI} ${TARGET_FILE}
      TIMEOUT 1800  # seconds
      EXPECTED_HASH ${TARGET_HASH_TYPE}=${TARGET_HASH}
      TLS_VERIFY ON
      SHOW_PROGRESS
    )
  endif()
  if(EXISTS ${TARGET_FILE})
    # Sometimes the download fails, but that is not a
    # fail condition for "file(DOWNLOAD" it will warn about
    # a CRC mismatch and just carry on, we need to explicitly
    # catch this and remove the bogus 0 byte file so we can
    # retry without having to go find the file and manually
    # delete it.
    file(SIZE ${TARGET_FILE} TARGET_SIZE)
    if(${TARGET_SIZE} EQUAL 0)
      file(REMOVE ${TARGET_FILE})
      message(FATAL_ERROR "for ${TARGET_FILE} file size 0, download likely failed, deleted...")
    endif()

    # If we are using sources from the blender repo also
    # validate that the hashes match, this takes a
    # little more time, but protects us when we are
    # building a release package and one of the packages
    # is missing or incorrect.
    #
    # For regular platform maintenaince this is not needed
    # since the actual build of the dep will notify the
    # platform maintainer if there is a problem with the
    # source package and refuse to build.
    if(NOT PACKAGE_USE_UPSTREAM_SOURCES OR FORCE_CHECK_HASH)
      file(${TARGET_HASH_TYPE} ${TARGET_FILE} LOCAL_HASH)
      if(NOT ${TARGET_HASH} STREQUAL ${LOCAL_HASH})
        message(FATAL_ERROR "${TARGET_FILE} ${TARGET_HASH_TYPE} mismatch\nExpected\t: ${TARGET_HASH}\nActual\t: ${LOCAL_HASH}")
      endif()
    endif()
  endif()
endfunction(download_source)


download_source(HIPRT)
