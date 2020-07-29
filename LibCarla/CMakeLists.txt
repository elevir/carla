cmake_minimum_required(VERSION 3.5.1)
project(libcarla)
set(SOLUTION_NAME ${PROJECT_NAME})

set(CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/CMake ${CMAKE_MODULE_PATH})

set(LIBCARLA_THIRD_PARTY_DIR ${CMAKE_CURRENT_BINARY_DIR}/third_party CACHE PATH "path to third party installation directory")
message(STATUS "Third party installation directory: ${LIBCARLA_THIRD_PARTY_DIR}")

option(LIBCARLA_BUILD_TEST "Build unit tests" ON)
message(STATUS "Build test:   ${LIBCARLA_BUILD_TEST}")

add_subdirectory(third-party)
add_subdirectory(libcarla)