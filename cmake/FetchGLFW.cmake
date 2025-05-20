include(FetchContent)

find_package(OpenGL REQUIRED)

FetchContent_Declare(
    glfw
    GIT_REPOSITORY https://github.com/glfw/glfw.git
    GIT_TAG 3.4
)
set(GLFW_BUILD_DOCS OFF CACHE BOOL "")
set(GLFW_INSTALL OFF CACHE BOOL "")

if(APPLE)
    add_compile_definitions(GL_SILENCE_DEPRECATION)
endif()

FetchContent_MakeAvailable(glfw)
