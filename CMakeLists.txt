cmake_minimum_required(VERSION 3.8)

project(mygui)

# Get GLFW and GLEW
include(FetchContent)
FetchContent_Declare (
    glfw
    GIT_REPOSITORY https://github.com/glfw/glfw.git
    GIT_TAG 3.4
)
set(GLFW_BUILD_DOCS OFF CACHE BOOL "")
set(GLFW_INSTALL OFF CACHE BOOL "")
FetchContent_MakeAvailable(glfw)

FetchContent_Declare(
  glew
  GIT_REPOSITORY https://github.com/Perlmint/glew-cmake.git
  GIT_TAG        origin/master
)
FetchContent_GetProperties(glew)
FetchContent_MakeAvailable(glew)

# Build custom static imgui for this project
add_subdirectory(imgui)

# Add main app
add_executable(mygui
    main.cpp
)
target_link_libraries(mygui PRIVATE imgui)
