# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file LICENSE.rst or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/Users/davidbbitton/src/edgetx")
  file(MAKE_DIRECTORY "/Users/davidbbitton/src/edgetx")
endif()
file(MAKE_DIRECTORY
  "/Users/davidbbitton/src/edgetx/build/native"
  "/Users/davidbbitton/src/edgetx/build/native-prefix"
  "/Users/davidbbitton/src/edgetx/build/native-prefix/tmp"
  "/Users/davidbbitton/src/edgetx/build/native-prefix/src/native-stamp"
  "/Users/davidbbitton/src/edgetx/build/native-prefix/src"
  "/Users/davidbbitton/src/edgetx/build/native-prefix/src/native-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/davidbbitton/src/edgetx/build/native-prefix/src/native-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/davidbbitton/src/edgetx/build/native-prefix/src/native-stamp${cfgdir}") # cfgdir has leading slash
endif()
