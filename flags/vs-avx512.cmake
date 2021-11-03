# Copyright (c) 2013, 2018 Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_FLAGS_VS_AVX512_CMAKE_)
  return()
else()
  set(POLLY_FLAGS_VS_AVX512_CMAKE_ 1)
endif()

include(polly_add_cache_flag)

polly_add_cache_flag(CMAKE_CXX_FLAGS_INIT "/arch:AVX512")
polly_add_cache_flag(CMAKE_C_FLAGS_INIT "/arch:AVX512")
