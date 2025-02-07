
#include <format>
#include <functional>
#include <iostream>
#include <string_view>

#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <imgui/backends/imgui_impl_glfw.h>
#include <imgui/backends/imgui_impl_opengl3.h>
#include <imgui/imgui.h>

#include <dlfcn.h>

#include "engine/Engine.hpp"
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

template <typename... Args> void error(std::string_view fmt, Args &&...args) {
  std::cerr << "[Error] ";
  std::cerr << std::vformat(fmt, std::make_format_args(args...)) << std::endl;
}
} // namespace logger

int main() {
  if (not glfwInit()) {
    logger::error("Failed to initialise GLFW");
    return 1;
  }
  logger::info("GLFW Init");

  constexpr auto GLSL_VERSION = "#version 420";
  glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4);
  glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 2);

  glfwWindowHint(GLFW_FLOATING, true);
  glfwWindowHint(GLFW_TRANSPARENT_FRAMEBUFFER, true);

#if DEBUG
  glfwWindowHintString(GLFW_X11_CLASS_NAME, "debug");
  glfwWindowHintString(GLFW_X11_INSTANCE_NAME, "debug");
  glfwWindowHint(GLFW_FOCUSED, true);
  glfwWindowHint(GLFW_FOCUS_ON_SHOW, true);
#endif

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
  io.ConfigFlags |= ImGuiConfigFlags_NavEnableKeyboard;
  io.ConfigFlags |= ImGuiConfigFlags_NavEnableGamepad;
  io.Fonts->AddFontFromFileTTF("JetBrainsMonoNerdFontMono-Medium.ttf", 24.f);
  io.FontGlobalScale = 1.5f;
  io.FontAllowUserScaling = true;

  ImGui::StyleColorsDark();

  logger::info("Initialising ImGui");
  ImGui_ImplGlfw_InitForOpenGL(window, true);
  ImGui_ImplOpenGL3_Init(GLSL_VERSION);

  logger::info("Initialised ImGui for OpenGL3");

  bool show_demo = false;
  i32 width, height;

  void *plugin = dlopen("src/engine/libengine.so", RTLD_NOW);
  if (not plugin) {
    logger::error("Failed to load DLL: {}", dlerror());
    return 1;
  }

  EngineConstructor constructor =
      (EngineConstructor)dlsym(plugin, nameof(make_engine));

  if (const auto error = dlerror()) {
    logger::error("Failed to get constructor, {}", error);
    return 1;
  }
  EngineProcess process = (EngineProcess)dlsym(plugin, nameof(engine_process));

  if (const auto error = dlerror()) {
    logger::error("Failed to get process, {}", error);
    return 1;
  }

  Engine *engine = constructor();

  while (not glfwWindowShouldClose(window)) {
    glfwPollEvents();

    process(*engine);

    // ImGUI Render
    ImGui_ImplOpenGL3_NewFrame();
    ImGui_ImplGlfw_NewFrame();
    ImGui::NewFrame();

    // ImGui::ShowDemoWindow(&show_demo);
    ImGui::Begin("DLL Test");
    if (ImGui::Button("Reload")) {
      dlclose(plugin);
      plugin = dlopen("src/engine/libengine.so", RTLD_NOW);
      if (not plugin) {
        logger::error("Failed to load DLL: {}", dlerror());
        return 1;
      }

      process = (EngineProcess)dlsym(plugin, nameof(engine_process));

      if (const auto error = dlerror()) {
        logger::error("Failed to get process, {}", error);
        return 1;
      }
    }
    ImGui::End();

    ImGui::Render();
    glfwGetFramebufferSize(window, &width, &height);
    glViewport(0, 0, width, height);
    glClearColor(0.1f, 0.1f, 0.05f, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT);

    ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());
    glfwSwapBuffers(window);
  }

  delete engine;
  dlclose(plugin);

  return 0;
}
