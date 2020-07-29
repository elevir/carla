cmake_minimum_required(VERSION 2.6)
project(odrSpiral)

# Output directory for static libraries
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/lib)
# Output directory for shared libraries and executables
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/bin)

# STATIC library
add_library(odrSpiral STATIC src/odrSpiral.c)
add_library(odrSpiral::odrSpiral ALIAS odrSpiral)
target_include_directories(odrSpiral PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
set_property(TARGET odrSpiral PROPERTY POSITION_INDEPENDENT_CODE ON)