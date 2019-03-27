# Copyright (c) 2015-2018, Ruslan Baratov
# Copyright (c) 2017-2018, Robert Nitsch
# Copyright (c) 2018, David Hirvonen
# All rights reserved.

if(DEFINED POLLY_ANDROID_NDK_R18B_API_19_X86_CLANG_LIBCXX14_CMAKE_)
  return()
else()
  set(POLLY_ANDROID_NDK_R18B_API_19_X86_CLANG_LIBCXX14_CMAKE_ 1)
endif()

include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_clear_environment_variables.cmake")

include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_init.cmake")

set(ANDROID_NDK_VERSION "r18b")
set(CMAKE_SYSTEM_VERSION "19")
set(CMAKE_ANDROID_ARCH_ABI "x86")
set(CMAKE_ANDROID_NDK_TOOLCHAIN_VERSION "clang")
set(CMAKE_ANDROID_STL_TYPE "c++_static") # LLVM libc++ static

polly_init(
    "Android NDK ${ANDROID_NDK_VERSION} / \
API ${CMAKE_SYSTEM_VERSION} / ${CMAKE_ANDROID_ARCH_ABI} / \
Clang / PIC / c++14 support / libc++ static"
    "Unix Makefiles"
)

include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_common.cmake")

include("${CMAKE_CURRENT_LIST_DIR}/flags/cxx14.cmake") # before toolchain!

include("${CMAKE_CURRENT_LIST_DIR}/os/android.cmake")

include("${CMAKE_CURRENT_LIST_DIR}/flags/fpic.cmake")
