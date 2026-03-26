# Copyright (c) 2016-2017, Ruslan Baratov
# Copyright (c) 2017, David Hirvonen
# All rights reserved.

# based on original gcc-7-cxx14-pic.cmake but assumes gcc itself is gcc v7

if(DEFINED POLLY_GCC_CXX20_GENERIC_PIC_HIDE_NINJA_CMAKE_)
  return()
else()
  set(POLLY_GCC_CXX20_GENERIC_PIC_HIDE_NINJA_CMAKE_ 1)
endif()

include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_init.cmake")

polly_init(
    "gcc / c++20 support / Generic x64 / PIC / hide"
    "Ninja"
)

include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_common.cmake")

include("${CMAKE_CURRENT_LIST_DIR}/compiler/gcc.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/flags/hidden.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/flags/cxx20.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/flags/cxx11-abi-disable.cmake") # effectively forced to 0 on RH7 and centos7, so disable to be consistent
include("${CMAKE_CURRENT_LIST_DIR}/flags/x86-64.cmake") # target generic processor
include("${CMAKE_CURRENT_LIST_DIR}/flags/fpic.cmake")
