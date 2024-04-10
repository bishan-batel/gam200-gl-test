
add_library(engine SHARED
  Engine.cpp
  Engine.hpp
)

target_link_libraries(engine ${GLEW_LIBRARIES} ${OPENGL_LIBRARIES}
                      imgui glfw)
