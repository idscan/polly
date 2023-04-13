# Copyright (c) 2016, Alexandre Pretyman
# All rights reserved.

if(DEFINED POLLY_EMSCRIPTEN_CXX17_CMAKE)
  return()
else()
  set(POLLY_EMSCRIPTEN_CXX17_CMAKE 1)
endif()

include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_init.cmake")

polly_init(
	"Emscripten Cross Compile / Threading / SIMD128 / WASM Exceptions / C++17"
    "Unix Makefiles"
)

include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_common.cmake")
include(polly_clear_environment_variables)
include("${CMAKE_CURRENT_LIST_DIR}/flags/cxx17.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/compiler/emscripten.cmake")

polly_add_cache_flag(CMAKE_EXE_LINKER_FLAGS "-pthread -msimd128 -fwasm-exceptions")
polly_add_cache_flag(CMAKE_SHARED_LINKER_FLAGS "-pthread -msimd128 -fwasm-exceptions")
polly_add_cache_flag(CMAKE_CXX_FLAGS "-pthread -msimd128 -fwasm-exceptions")
polly_add_cache_flag(CMAKE_C_FLAGS "-pthread -msimd128 -fwasm-exceptions")
