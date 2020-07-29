include(${CMAKE_CURRENT_LIST_DIR}/client/source_files.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/geom/source_files.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/nav/source_files.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/opendrive/source_files.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/pointcloud/source_files.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/profiler/source_files.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/road/source_files.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/rpc/source_files.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/sensor/source_files.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/streaming/source_files.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/trafficmanager/source_files.cmake)

set(SOURCE_FILES ${SOURCE_FILES}
	${CMAKE_CURRENT_LIST_DIR}/Buffer.cpp
	${CMAKE_CURRENT_LIST_DIR}/Exception.cpp
	${CMAKE_CURRENT_LIST_DIR}/FileSystem.cpp
	${CMAKE_CURRENT_LIST_DIR}/StringUtil.cpp)