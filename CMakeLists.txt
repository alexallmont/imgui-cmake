cmake_minimum_required(VERSION 3.11)

project(mygui)

set(CMAKE_CXX_STANDARD 17)

find_package(OpenGL REQUIRED)

include(FetchContent)
FetchContent_Declare(
    glfw
    GIT_REPOSITORY https://github.com/glfw/glfw.git
    GIT_TAG 3.4
)
set(GLFW_BUILD_DOCS OFF CACHE BOOL "")
set(GLFW_INSTALL OFF CACHE BOOL "")
FetchContent_MakeAvailable(glfw)

add_subdirectory(imgui)

add_executable(mygui
    main.cpp
)
target_link_libraries(mygui PRIVATE imgui)
