
#include <format>
#include <iostream>
#include <string_view>

#include "GL/glew.h"
#include "GLFW/glfw3.h"
#include "imgui.h"
#include "imgui_impl_glfw.h"
#include "imgui_impl_opengl3.h"

#include "preamble.hpp"

#if defined(IMGUI_IMPL_OPENGL_ES2)
#include <GLES2/gl2.h>
#endif
#include <GLFW/glfw3.h> // Will drag system OpenGL headers

namespace logger {
template <typename... Args> void info(std::string_view fmt, Args &&...args) {
  std::cout << "[Info] ";
  std::cout << std::vformat(fmt, std::make_format_args(args...)) << std::endl;
}
} // namespace logger

int main() {
  if (not glfwInit()) {
    std::cerr << "Failed to initialise GLFW" << std::endl;
    return 1;
  }
  logger::info("GLFW Init");

  constexpr auto GLSL_VERSION = "#version 420";
  glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4);
  glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 2);

  logger::info("Attempting to create windows");
  GLFWwindow *const window =
      glfwCreateWindow(1000, 1000, "bruh", nullptr, nullptr);

  if (not window) {
    std::cerr << "Failed to initialise GLFW" << std::endl;
  }

  glfwMakeContextCurrent(window);
  glfwSwapInterval(1);

  logger::info("Initialising Glew");
  glewInit();

  logger::info("Creating ImGui Context");
  IMGUI_CHECKVERSION();
  ImGui::CreateContext();

  logger::info("Setting config flags");
  ImGuiIO &io = ImGui::GetIO();
  (void)io;
  io.ConfigFlags |= ImGuiConfigFlags_NavEnableKeyboard;
  io.ConfigFlags |= ImGuiConfigFlags_NavEnableGamepad;
  io.FontGlobalScale = 2.f;

  ImGui::StyleColorsDark();

  logger::info("Initialising ImGui");
  ImGui_ImplGlfw_InitForOpenGL(window, true);
  ImGui_ImplOpenGL3_Init(GLSL_VERSION);

  logger::info("Initialised ImGui for OpenGL3");

  bool show_demo = false;
  i32 width, height;

  while (not glfwWindowShouldClose(window)) {
    glfwPollEvents();

    // ImGUI Render
    ImGui_ImplOpenGL3_NewFrame();
    ImGui_ImplGlfw_NewFrame();
    ImGui::NewFrame();

    ImGui::ShowDemoWindow(&show_demo);

    ImGui::Render();
    glfwGetFramebufferSize(window, &width, &height);
    glViewport(0, 0, width, height);
    glClearColor(0.1f, 0.1f, 0.05f, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT);

    ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());
    glfwSwapBuffers(window);
  }

  return 0;
}
