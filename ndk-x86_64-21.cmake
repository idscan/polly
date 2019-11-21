
set(ANDROID_ABI x86_64)

set(ANDROID_PLATFORM 21)

include($ENV{ANDROID_NDK}/build/cmake/android.toolchain.cmake)

set(CMAKE_CXX_STANDARD 14) # Override the default

