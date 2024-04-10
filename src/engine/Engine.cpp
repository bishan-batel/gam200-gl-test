#include "Engine.hpp"
#include <iostream>

Engine::Engine() = default;

void Engine::process() { 
  std::cout << "huh" << std::endl; 
}

Engine *make_engine() { return new Engine{}; }

void engine_process(Engine &engine) { engine.process(); }
