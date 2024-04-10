cmake_minimum_required(VERSION 3.10)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

project(gaming-gl VERSION 1.0)

file(GLOB_RECURSE SOURCE_FILES "src/*.cpp" "src/*.hpp")
set(LIBS_DIR "${PROJECT_SOURCE_DIR}/libs")

# Executable
include_directories(${PROJECT_SOURCE_DIR} ${PROJECT_SOURCE_DIR}/src ${LIBS_DIR})
add_executable(${PROJECT_NAME} ${SOURCE_FILES})

if(${CMAKE_BUILD_TYPE} STREQUAL "Debug")
  set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
  set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
  set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
else()
  set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
  set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
  set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
endif()

target_compile_definitions(${PROJECT_NAME}
                           PRIVATE "DEBUG=$<IF:$<CONFIG:Debug>,1,0>")

# ==============================================================================
# Dependencies
# ==============================================================================

# GLFW3
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

# ImGUI
set(IMGUI_DIR "${LIBS_DIR}/imgui")
include_directories(${IMGUI_DIR})

add_library(
  imgui SHARED
  ${IMGUI_DIR}/backends/imgui_impl_glfw.cpp
  ${IMGUI_DIR}/backends/imgui_impl_opengl3.cpp
  ${IMGUI_DIR}/imgui.cpp
  ${IMGUI_DIR}/imgui_demo.cpp
  ${IMGUI_DIR}/imgui_draw.cpp
  ${IMGUI_DIR}/imgui_tables.cpp
  ${IMGUI_DIR}/imgui_widgets.cpp)

# Link Dependencies
target_link_libraries(${PROJECT_NAME} ${GLEW_LIBRARIES} ${OPENGL_LIBRARIES}
                      imgui glfw)

add_custom_command(
  TARGET ${PROJECT_NAME}
  POST_BUILD
  COMMAND ${CMAKE_COMMAND} -E copy_directory ${CMAKE_SOURCE_DIR}/assets
          ${PROJECT_BINARY_DIR}
  COMMENT "Copy resources to build tree")
