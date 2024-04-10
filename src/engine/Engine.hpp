#pragma once

#include <type_traits>
class Engine {
public:
  Engine();

  void process();
};

extern "C" {
Engine *make_engine();

void engine_process(Engine &engine);

using EngineConstructor = decltype(&make_engine);
using EngineProcess = decltype(&engine_process);
}
