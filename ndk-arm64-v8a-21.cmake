
# Set NEON - in theory redundant but to be clear
set(ANDROID_ABI arm64-v8a)
set(ANDROID_ARM_NEON TRUE)

set(ANDROID_PLATFORM 21)

include($ENV{ANDROID_NDK}/build/cmake/android.toolchain.cmake)

set(CMAKE_CXX_STANDARD 14) # Override the default
