# Copyright (c) 2017, NeroBurner
# All rights reserved.

if(DEFINED POLLY_FLAGS_X86_64_CMAKE_)
  return()
else()
  set(POLLY_FLAGS_X86_64_CMAKE_ 1)
endif()

include(polly_add_cache_flag)

polly_add_cache_flag(CMAKE_CXX_FLAGS "-march=x86-64")
polly_add_cache_flag(CMAKE_C_FLAGS "-march=x86-64")

# Make it clear what we are requesting
list(APPEND HUNTER_TOOLCHAIN_UNDETECTABLE_ID "x86-64")
