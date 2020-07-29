cmake_minimum_required(VERSION 3.5.1)
project(libcarla)
set(TARGET_NAME libcarla)
include(GNUInstallDirs)

option(BUILD_CLIENT_RSS_VARIANT "Enables ad-rss-lib based RSS components" OFF)
option(BUILD_RSS_VARIANT "Enables ad-rss-lib based RSS components" OFF)

message(STATUS "RSS components enabled: ${BUILD_RSS_VARIANT}")
if (BUILD_RSS_VARIANT)
	set(CMAKE_DEBUG_POSTFIX "_rss${CMAKE_DEBUG_POSTFIX}")
	set(CMAKE_RELEASE_POSTFIX "_rss${CMAKE_RELEASE_POSTFIX}")
	include(source/rss/source_files.cmake)
endif()

include(sources/source_files.cmake)
add_library(${TARGET_NAME} STATIC ${SOURCE_FILES})
add_library(${SOLUTION_NAME}::${TARGET_NAME} ALIAS ${TARGET_NAME})

configure_file(Version.h.in ${CMAKE_CURRENT_BINARY_DIR}/headers/carla/Version.h)

target_include_directories(${TARGET_NAME} 
	PUBLIC
		$<BUILD_INTERFACE:${CMAKE_CURRENT_BINARY_DIR}/headers>
		$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/headers>
		$<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>)

if(WIN32)
	# suppress warnings
	target_compile_definitions(${TARGET_NAME} PUBLIC -D_WIN32_WINNT=0x0601)
endif()

target_link_libraries(${TARGET_NAME} PUBLIC odrSpiral::odrSpiral)
target_link_libraries(${TARGET_NAME} PUBLIC moodycamel::moodycamel)

########################################################################
# vcpkg packages
########################################################################

find_package(Boost REQUIRED)
target_link_libraries(${TARGET_NAME} PUBLIC ${Boost_LIBRARIES})
target_include_directories(${TARGET_NAME} PUBLIC ${Boost_INCLUDE_DIRS})

find_package(rpclib REQUIRED)
target_link_libraries(${TARGET_NAME} PUBLIC rpclib::rpc)

find_package(Recast REQUIRED)
target_link_libraries(${TARGET_NAME} PUBLIC ${Recast_LIBRARIES})
target_include_directories(${TARGET_NAME} PUBLIC ${Recast_INCLUDE_DIRS})

find_package(pugixml CONFIG REQUIRED)
target_link_libraries(${TARGET_NAME} PRIVATE pugixml)

find_package(PNG REQUIRED)
target_link_libraries(${TARGET_NAME} PUBLIC ${PNG_LIBRARIES})
target_include_directories(${TARGET_NAME} PUBLIC ${PNG_INCLUDE_DIRS})

find_package(spdlog CONFIG REQUIRED)
target_link_libraries(${TARGET_NAME} PRIVATE spdlog::spdlog spdlog::spdlog_header_only)