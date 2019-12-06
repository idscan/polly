
string(COMPARE EQUAL "$ENV{NDK_ROOT}" "" __empty_ndk_root_env)
if(__empty_ndk_root_env)
  message(FATAL_ERROR "No NDK_ROOT supplied")
endif()

# Set NEON - in theory redundant but to be clear
set(ANDROID_ABI arm64-v8a)
set(ANDROID_ARM_NEON TRUE)

set(ANDROID_PLATFORM 21)

include($ENV{NDK_ROOT}/build/cmake/android.toolchain.cmake)

set(CMAKE_CXX_STANDARD 14) # Override the default
