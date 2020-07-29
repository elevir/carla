include(${CMAKE_CURRENT_LIST_DIR}/element/source_files.cmake)

set(SOURCE_FILES ${SOURCE_FILES}
    ${CMAKE_CURRENT_LIST_DIR}/Lane.cpp
    ${CMAKE_CURRENT_LIST_DIR}/LaneSection.cpp
    ${CMAKE_CURRENT_LIST_DIR}/Map.cpp
    ${CMAKE_CURRENT_LIST_DIR}/MapBuilder.cpp
    ${CMAKE_CURRENT_LIST_DIR}/MapData.cpp
    ${CMAKE_CURRENT_LIST_DIR}/MeshFactory.cpp
    ${CMAKE_CURRENT_LIST_DIR}/Road.cpp
    ${CMAKE_CURRENT_LIST_DIR}/SignalType.cpp)