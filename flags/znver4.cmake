# Copyright (c) 2017, NeroBurner
# All rights reserved.

# 4th generation AMC EPYC

if(DEFINED POLLY_FLAGS_ZNVER4_CMAKE_)
  return()
else()
  set(POLLY_FLAGS_ZNVER4_CMAKE_ 1)
endif()

include(polly_add_cache_flag)

polly_add_cache_flag(CMAKE_CXX_FLAGS "-march=znver4")
polly_add_cache_flag(CMAKE_C_FLAGS "-march=znver4")

# Make it clear what we are requesting
list(APPEND HUNTER_TOOLCHAIN_UNDETECTABLE_ID "znver4")
