include(${CMAKE_CURRENT_LIST_DIR}/tcp/source_files.cmake)

set(SOURCE_FILES ${SOURCE_FILES}
    ${CMAKE_CURRENT_LIST_DIR}/Dispatcher.cpp
    ${CMAKE_CURRENT_LIST_DIR}/StreamStateBase.cpp
    ${CMAKE_CURRENT_LIST_DIR}/Token.cpp)
