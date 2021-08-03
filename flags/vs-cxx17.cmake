# Copyright (c) 2013, 2018 Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_FLAGS_VS_CXX17_CMAKE_)
  return()
else()
  set(POLLY_FLAGS_VS_CXX17_CMAKE_ 1)
endif()

include(polly_add_cache_flag)

# VS2017 (at least) erroneously reports an issue with std::allocator on C++17. Define
# _SILENCE_CXX17_ALLOCATOR_VOID_DEPRECATION_WARNING to shut it up.
polly_add_cache_flag(CMAKE_CXX_FLAGS_INIT "/std:c++17 -D_SILENCE_CXX17_ALLOCATOR_VOID_DEPRECATION_WARNING")

# Set CMAKE_CXX_STANDARD to cache to override project local value if present.
# FORCE added in case CMAKE_CXX_STANDARD already set in cache
# (e.g. set before 'project' by user).
set(CMAKE_CXX_STANDARD 17 CACHE STRING "C++ Standard (toolchain)" FORCE)
set(CMAKE_CXX_STANDARD_REQUIRED YES CACHE BOOL "C++ Standard required" FORCE)
set(CMAKE_CXX_EXTENSIONS NO CACHE BOOL "C++ Standard extensions" FORCE)
