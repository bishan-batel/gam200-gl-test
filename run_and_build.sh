#!/bin/bash

BUILD_DIR="./build/"
PROJECT_NAME="gaming-gl"

if [ ! -d $BUILD_DIR ]; then 
  cmake -S . -B $BUILD_DIR
fi

cmake --build $BUILD_DIR && $BUILD_DIR/$PROJECT_NAME

