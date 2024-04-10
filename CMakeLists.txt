cmake_minimum_required(VERSION 3.10)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

project(gaming-gl VERSION 1.0)

#set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_DEBUG "${CMAKE_SOURCE_DIR}/build/debug")
#set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR})

file(GLOB_RECURSE SOURCE_FILES "src/*.cpp" "src/*.hpp")

# Glad find_package(glad CONFIG REQUIRED) target_link_libraries(${PROJECT_NAME}
# glad::glad)

find_package(glfw3 REQUIRED)
include_directories(${GLFW_INCLUDE_DIR})
link_libraries(${GLFW_LIBRARY_DIRS})


# OpenGL
set(OpenGL_GL_PREFERENCE GLVND)
find_package(OpenGL REQUIRED)
include_directories(${OPENGL_INCLUDE_DIRS})

# Glew
find_package(GLEW REQUIRED)
include_directories(${GLEW_INCLUDE_DIRS})

set(IMGUI_DIR "imgui")
include_directories(${IMGUI_DIR} ${IMGUI_DIR}/backends .. ${PROJECT_SOURCE_DIR} ${PROJECT_SOURCE_DIR}/src)

add_executable(${PROJECT_NAME} 
    ${SOURCE_FILES}
    ${IMGUI_DIR}/backends/imgui_impl_glfw.cpp
    ${IMGUI_DIR}/backends/imgui_impl_opengl3.cpp
    ${IMGUI_DIR}/imgui.cpp
    ${IMGUI_DIR}/imgui_demo.cpp
    ${IMGUI_DIR}/imgui_draw.cpp
    ${IMGUI_DIR}/imgui_tables.cpp
    ${IMGUI_DIR}/imgui_widgets.cpp
)


target_link_libraries(
        ${PROJECT_NAME}
        glfw
        ${OPENGL_LIBRARIES}
        ${GLEW_LIBRARIES}
)

add_custom_command(
  TARGET ${PROJECT_NAME}
  POST_BUILD
  COMMAND ${CMAKE_COMMAND} -E copy_directory ${CMAKE_SOURCE_DIR}/assets
          ${PROJECT_BINARY_DIR}
  COMMENT "Copy resources to build tree")
