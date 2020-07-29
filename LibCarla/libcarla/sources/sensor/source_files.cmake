include(${CMAKE_CURRENT_LIST_DIR}/data/source_files.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/s11n/source_files.cmake)

set(SOURCE_FILES ${SOURCE_FILES}
    ${CMAKE_CURRENT_LIST_DIR}/Deserializer.cpp)
