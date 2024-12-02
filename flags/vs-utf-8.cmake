# Copyright (c) 2013, 2018 Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_FLAGS_VS_UTF_8_CMAKE_)
  return()
else()
	set(POLLY_FLAGS_VS_UTF_8_CMAKE_ 1)
endif()

include(polly_add_cache_flag)

polly_add_cache_flag(CMAKE_CXX_FLAGS_INIT "/utf-8")
polly_add_cache_flag(CMAKE_C_FLAGS_INIT "/utf-8")

# Make it clear what we are requesting
list(APPEND HUNTER_TOOLCHAIN_UNDETECTABLE_ID "UTF-8")

