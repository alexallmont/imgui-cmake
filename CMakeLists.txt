cmake_minimum_required(VERSION 3.11)

project(imgui_cmake)

set(CMAKE_CXX_STANDARD 17)

include(cmake/FetchGLFW.cmake)
include(cmake/FetchImgui.cmake)

add_executable(main_app
    main.cpp
    README.md
)

target_link_libraries(main_app
    imgui_static
)

set_property(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
    PROPERTY VS_STARTUP_PROJECT main_app
)
