project(moodycamel)

add_library(moodycamel INTERFACE)
add_library(moodycamel::moodycamel ALIAS moodycamel)
target_include_directories(moodycamel INTERFACE include)