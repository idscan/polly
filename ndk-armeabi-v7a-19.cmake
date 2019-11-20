
# Assume neon
set(ANDROID_ABI armeabi-v7a)
set(ANDROID_ARM_NEON TRUE)

set(ANDROID_PLATFORM 19)

include($ENV{ANDROID_NDK}/build/cmake/android.toolchain.cmake)

