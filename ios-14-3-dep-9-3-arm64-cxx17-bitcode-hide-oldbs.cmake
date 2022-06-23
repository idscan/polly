# Copyright (c) 2017, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_IOS_14_3_DEP_9_3_ARM64_CXX17_BITCODE_CMAKE_)
  return()
else()
	set(POLLY_IOS_14_3_DEP_9_3_ARM64_CXX17_BITCODE_CMAKE_ 1)
endif()

include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_clear_environment_variables.cmake")

include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_init.cmake")

set(IOS_SDK_VERSION 14.3)
set(IOS_DEPLOYMENT_SDK_VERSION 9.3)

set(POLLY_XCODE_COMPILER "clang")
polly_init(
  "iOS ${IOS_SDK_VERSION} / Deployment ${IOS_DEPLOYMENT_SDK_VERSION} / Universal (arm64) Simulator (x64) / \
${POLLY_XCODE_COMPILER} / \
bitcode / \
c++17 support / \
Old Build System"
    "Xcode"
)

include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_common.cmake")

include(polly_fatal_error)

# Fix try_compile
include(polly_ios_bundle_identifier)

set(CMAKE_MACOSX_BUNDLE YES)
set(CMAKE_XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY "iPhone Developer")

set(IPHONEOS_ARCHS arm64)
set(IPHONESIMULATOR_ARCHS x86_64)

set(CMAKE_GENERATOR_TOOLSET buildsystem=1) # force "old xcode build system"
list(APPEND HUNTER_TOOLCHAIN_UNDETECTABLE_ID "buildsystem=1")

include("${CMAKE_CURRENT_LIST_DIR}/compiler/xcode.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/flags/hidden.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/os/iphone.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/flags/cxx17.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/flags/bitcode.cmake") # after os/iphone.cmake
include("${CMAKE_CURRENT_LIST_DIR}/flags/fno-aligned-allocation.cmake") # aligned allocation needs iOS >= 11.0
include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_ios_development_team.cmake")
