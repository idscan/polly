# Copyright (c) 2017, NeroBurner
# All rights reserved.

if(DEFINED POLLY_FLAGS_SAPPHIRERAPIDS_CMAKE_)
  return()
else()
  set(POLLY_FLAGS_SAPPHIRERAPIDS_CMAKE_ 1)
endif()

include(polly_add_cache_flag)

polly_add_cache_flag(CMAKE_CXX_FLAGS "-march=sapphirerapids")
polly_add_cache_flag(CMAKE_C_FLAGS "-march=sapphirerapids")

# Make it clear what we are requesting
list(APPEND HUNTER_TOOLCHAIN_UNDETECTABLE_ID "sapphirerapids")
