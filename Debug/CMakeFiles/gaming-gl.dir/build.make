# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/bishan_/code/gaming-gl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bishan_/code/gaming-gl/Debug

# Include any dependencies generated for this target.
include CMakeFiles/gaming-gl.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/gaming-gl.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/gaming-gl.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/gaming-gl.dir/flags.make

CMakeFiles/gaming-gl.dir/src/main.cpp.o: CMakeFiles/gaming-gl.dir/flags.make
CMakeFiles/gaming-gl.dir/src/main.cpp.o: /home/bishan_/code/gaming-gl/src/main.cpp
CMakeFiles/gaming-gl.dir/src/main.cpp.o: CMakeFiles/gaming-gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/bishan_/code/gaming-gl/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/gaming-gl.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/gaming-gl.dir/src/main.cpp.o -MF CMakeFiles/gaming-gl.dir/src/main.cpp.o.d -o CMakeFiles/gaming-gl.dir/src/main.cpp.o -c /home/bishan_/code/gaming-gl/src/main.cpp

CMakeFiles/gaming-gl.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/gaming-gl.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bishan_/code/gaming-gl/src/main.cpp > CMakeFiles/gaming-gl.dir/src/main.cpp.i

CMakeFiles/gaming-gl.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/gaming-gl.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bishan_/code/gaming-gl/src/main.cpp -o CMakeFiles/gaming-gl.dir/src/main.cpp.s

CMakeFiles/gaming-gl.dir/imgui/backends/imgui_impl_glfw.cpp.o: CMakeFiles/gaming-gl.dir/flags.make
CMakeFiles/gaming-gl.dir/imgui/backends/imgui_impl_glfw.cpp.o: /home/bishan_/code/gaming-gl/imgui/backends/imgui_impl_glfw.cpp
CMakeFiles/gaming-gl.dir/imgui/backends/imgui_impl_glfw.cpp.o: CMakeFiles/gaming-gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/bishan_/code/gaming-gl/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/gaming-gl.dir/imgui/backends/imgui_impl_glfw.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/gaming-gl.dir/imgui/backends/imgui_impl_glfw.cpp.o -MF CMakeFiles/gaming-gl.dir/imgui/backends/imgui_impl_glfw.cpp.o.d -o CMakeFiles/gaming-gl.dir/imgui/backends/imgui_impl_glfw.cpp.o -c /home/bishan_/code/gaming-gl/imgui/backends/imgui_impl_glfw.cpp

CMakeFiles/gaming-gl.dir/imgui/backends/imgui_impl_glfw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/gaming-gl.dir/imgui/backends/imgui_impl_glfw.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bishan_/code/gaming-gl/imgui/backends/imgui_impl_glfw.cpp > CMakeFiles/gaming-gl.dir/imgui/backends/imgui_impl_glfw.cpp.i

CMakeFiles/gaming-gl.dir/imgui/backends/imgui_impl_glfw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/gaming-gl.dir/imgui/backends/imgui_impl_glfw.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bishan_/code/gaming-gl/imgui/backends/imgui_impl_glfw.cpp -o CMakeFiles/gaming-gl.dir/imgui/backends/imgui_impl_glfw.cpp.s

CMakeFiles/gaming-gl.dir/imgui/backends/imgui_impl_opengl3.cpp.o: CMakeFiles/gaming-gl.dir/flags.make
CMakeFiles/gaming-gl.dir/imgui/backends/imgui_impl_opengl3.cpp.o: /home/bishan_/code/gaming-gl/imgui/backends/imgui_impl_opengl3.cpp
CMakeFiles/gaming-gl.dir/imgui/backends/imgui_impl_opengl3.cpp.o: CMakeFiles/gaming-gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/bishan_/code/gaming-gl/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/gaming-gl.dir/imgui/backends/imgui_impl_opengl3.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/gaming-gl.dir/imgui/backends/imgui_impl_opengl3.cpp.o -MF CMakeFiles/gaming-gl.dir/imgui/backends/imgui_impl_opengl3.cpp.o.d -o CMakeFiles/gaming-gl.dir/imgui/backends/imgui_impl_opengl3.cpp.o -c /home/bishan_/code/gaming-gl/imgui/backends/imgui_impl_opengl3.cpp

CMakeFiles/gaming-gl.dir/imgui/backends/imgui_impl_opengl3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/gaming-gl.dir/imgui/backends/imgui_impl_opengl3.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bishan_/code/gaming-gl/imgui/backends/imgui_impl_opengl3.cpp > CMakeFiles/gaming-gl.dir/imgui/backends/imgui_impl_opengl3.cpp.i

CMakeFiles/gaming-gl.dir/imgui/backends/imgui_impl_opengl3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/gaming-gl.dir/imgui/backends/imgui_impl_opengl3.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bishan_/code/gaming-gl/imgui/backends/imgui_impl_opengl3.cpp -o CMakeFiles/gaming-gl.dir/imgui/backends/imgui_impl_opengl3.cpp.s

CMakeFiles/gaming-gl.dir/imgui/imgui.cpp.o: CMakeFiles/gaming-gl.dir/flags.make
CMakeFiles/gaming-gl.dir/imgui/imgui.cpp.o: /home/bishan_/code/gaming-gl/imgui/imgui.cpp
CMakeFiles/gaming-gl.dir/imgui/imgui.cpp.o: CMakeFiles/gaming-gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/bishan_/code/gaming-gl/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/gaming-gl.dir/imgui/imgui.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/gaming-gl.dir/imgui/imgui.cpp.o -MF CMakeFiles/gaming-gl.dir/imgui/imgui.cpp.o.d -o CMakeFiles/gaming-gl.dir/imgui/imgui.cpp.o -c /home/bishan_/code/gaming-gl/imgui/imgui.cpp

CMakeFiles/gaming-gl.dir/imgui/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/gaming-gl.dir/imgui/imgui.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bishan_/code/gaming-gl/imgui/imgui.cpp > CMakeFiles/gaming-gl.dir/imgui/imgui.cpp.i

CMakeFiles/gaming-gl.dir/imgui/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/gaming-gl.dir/imgui/imgui.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bishan_/code/gaming-gl/imgui/imgui.cpp -o CMakeFiles/gaming-gl.dir/imgui/imgui.cpp.s

CMakeFiles/gaming-gl.dir/imgui/imgui_demo.cpp.o: CMakeFiles/gaming-gl.dir/flags.make
CMakeFiles/gaming-gl.dir/imgui/imgui_demo.cpp.o: /home/bishan_/code/gaming-gl/imgui/imgui_demo.cpp
CMakeFiles/gaming-gl.dir/imgui/imgui_demo.cpp.o: CMakeFiles/gaming-gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/bishan_/code/gaming-gl/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/gaming-gl.dir/imgui/imgui_demo.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/gaming-gl.dir/imgui/imgui_demo.cpp.o -MF CMakeFiles/gaming-gl.dir/imgui/imgui_demo.cpp.o.d -o CMakeFiles/gaming-gl.dir/imgui/imgui_demo.cpp.o -c /home/bishan_/code/gaming-gl/imgui/imgui_demo.cpp

CMakeFiles/gaming-gl.dir/imgui/imgui_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/gaming-gl.dir/imgui/imgui_demo.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bishan_/code/gaming-gl/imgui/imgui_demo.cpp > CMakeFiles/gaming-gl.dir/imgui/imgui_demo.cpp.i

CMakeFiles/gaming-gl.dir/imgui/imgui_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/gaming-gl.dir/imgui/imgui_demo.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bishan_/code/gaming-gl/imgui/imgui_demo.cpp -o CMakeFiles/gaming-gl.dir/imgui/imgui_demo.cpp.s

CMakeFiles/gaming-gl.dir/imgui/imgui_draw.cpp.o: CMakeFiles/gaming-gl.dir/flags.make
CMakeFiles/gaming-gl.dir/imgui/imgui_draw.cpp.o: /home/bishan_/code/gaming-gl/imgui/imgui_draw.cpp
CMakeFiles/gaming-gl.dir/imgui/imgui_draw.cpp.o: CMakeFiles/gaming-gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/bishan_/code/gaming-gl/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/gaming-gl.dir/imgui/imgui_draw.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/gaming-gl.dir/imgui/imgui_draw.cpp.o -MF CMakeFiles/gaming-gl.dir/imgui/imgui_draw.cpp.o.d -o CMakeFiles/gaming-gl.dir/imgui/imgui_draw.cpp.o -c /home/bishan_/code/gaming-gl/imgui/imgui_draw.cpp

CMakeFiles/gaming-gl.dir/imgui/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/gaming-gl.dir/imgui/imgui_draw.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bishan_/code/gaming-gl/imgui/imgui_draw.cpp > CMakeFiles/gaming-gl.dir/imgui/imgui_draw.cpp.i

CMakeFiles/gaming-gl.dir/imgui/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/gaming-gl.dir/imgui/imgui_draw.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bishan_/code/gaming-gl/imgui/imgui_draw.cpp -o CMakeFiles/gaming-gl.dir/imgui/imgui_draw.cpp.s

CMakeFiles/gaming-gl.dir/imgui/imgui_tables.cpp.o: CMakeFiles/gaming-gl.dir/flags.make
CMakeFiles/gaming-gl.dir/imgui/imgui_tables.cpp.o: /home/bishan_/code/gaming-gl/imgui/imgui_tables.cpp
CMakeFiles/gaming-gl.dir/imgui/imgui_tables.cpp.o: CMakeFiles/gaming-gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/bishan_/code/gaming-gl/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/gaming-gl.dir/imgui/imgui_tables.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/gaming-gl.dir/imgui/imgui_tables.cpp.o -MF CMakeFiles/gaming-gl.dir/imgui/imgui_tables.cpp.o.d -o CMakeFiles/gaming-gl.dir/imgui/imgui_tables.cpp.o -c /home/bishan_/code/gaming-gl/imgui/imgui_tables.cpp

CMakeFiles/gaming-gl.dir/imgui/imgui_tables.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/gaming-gl.dir/imgui/imgui_tables.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bishan_/code/gaming-gl/imgui/imgui_tables.cpp > CMakeFiles/gaming-gl.dir/imgui/imgui_tables.cpp.i

CMakeFiles/gaming-gl.dir/imgui/imgui_tables.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/gaming-gl.dir/imgui/imgui_tables.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bishan_/code/gaming-gl/imgui/imgui_tables.cpp -o CMakeFiles/gaming-gl.dir/imgui/imgui_tables.cpp.s

CMakeFiles/gaming-gl.dir/imgui/imgui_widgets.cpp.o: CMakeFiles/gaming-gl.dir/flags.make
CMakeFiles/gaming-gl.dir/imgui/imgui_widgets.cpp.o: /home/bishan_/code/gaming-gl/imgui/imgui_widgets.cpp
CMakeFiles/gaming-gl.dir/imgui/imgui_widgets.cpp.o: CMakeFiles/gaming-gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/bishan_/code/gaming-gl/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/gaming-gl.dir/imgui/imgui_widgets.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/gaming-gl.dir/imgui/imgui_widgets.cpp.o -MF CMakeFiles/gaming-gl.dir/imgui/imgui_widgets.cpp.o.d -o CMakeFiles/gaming-gl.dir/imgui/imgui_widgets.cpp.o -c /home/bishan_/code/gaming-gl/imgui/imgui_widgets.cpp

CMakeFiles/gaming-gl.dir/imgui/imgui_widgets.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/gaming-gl.dir/imgui/imgui_widgets.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bishan_/code/gaming-gl/imgui/imgui_widgets.cpp > CMakeFiles/gaming-gl.dir/imgui/imgui_widgets.cpp.i

CMakeFiles/gaming-gl.dir/imgui/imgui_widgets.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/gaming-gl.dir/imgui/imgui_widgets.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bishan_/code/gaming-gl/imgui/imgui_widgets.cpp -o CMakeFiles/gaming-gl.dir/imgui/imgui_widgets.cpp.s

# Object files for target gaming-gl
gaming__gl_OBJECTS = \
"CMakeFiles/gaming-gl.dir/src/main.cpp.o" \
"CMakeFiles/gaming-gl.dir/imgui/backends/imgui_impl_glfw.cpp.o" \
"CMakeFiles/gaming-gl.dir/imgui/backends/imgui_impl_opengl3.cpp.o" \
"CMakeFiles/gaming-gl.dir/imgui/imgui.cpp.o" \
"CMakeFiles/gaming-gl.dir/imgui/imgui_demo.cpp.o" \
"CMakeFiles/gaming-gl.dir/imgui/imgui_draw.cpp.o" \
"CMakeFiles/gaming-gl.dir/imgui/imgui_tables.cpp.o" \
"CMakeFiles/gaming-gl.dir/imgui/imgui_widgets.cpp.o"

# External object files for target gaming-gl
gaming__gl_EXTERNAL_OBJECTS =

gaming-gl: CMakeFiles/gaming-gl.dir/src/main.cpp.o
gaming-gl: CMakeFiles/gaming-gl.dir/imgui/backends/imgui_impl_glfw.cpp.o
gaming-gl: CMakeFiles/gaming-gl.dir/imgui/backends/imgui_impl_opengl3.cpp.o
gaming-gl: CMakeFiles/gaming-gl.dir/imgui/imgui.cpp.o
gaming-gl: CMakeFiles/gaming-gl.dir/imgui/imgui_demo.cpp.o
gaming-gl: CMakeFiles/gaming-gl.dir/imgui/imgui_draw.cpp.o
gaming-gl: CMakeFiles/gaming-gl.dir/imgui/imgui_tables.cpp.o
gaming-gl: CMakeFiles/gaming-gl.dir/imgui/imgui_widgets.cpp.o
gaming-gl: CMakeFiles/gaming-gl.dir/build.make
gaming-gl: /usr/lib/libglfw.so.3.4
gaming-gl: /usr/lib/libOpenGL.so
gaming-gl: /usr/lib/libGLX.so
gaming-gl: /usr/lib/libGLU.so
gaming-gl: /usr/lib/libGLEW.so
gaming-gl: CMakeFiles/gaming-gl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/bishan_/code/gaming-gl/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable gaming-gl"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gaming-gl.dir/link.txt --verbose=$(VERBOSE)
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold "Copy resources to build tree"
	/usr/bin/cmake -E copy_directory /home/bishan_/code/gaming-gl/assets /home/bishan_/code/gaming-gl/Debug

# Rule to build all files generated by this target.
CMakeFiles/gaming-gl.dir/build: gaming-gl
.PHONY : CMakeFiles/gaming-gl.dir/build

CMakeFiles/gaming-gl.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/gaming-gl.dir/cmake_clean.cmake
.PHONY : CMakeFiles/gaming-gl.dir/clean

CMakeFiles/gaming-gl.dir/depend:
	cd /home/bishan_/code/gaming-gl/Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bishan_/code/gaming-gl /home/bishan_/code/gaming-gl /home/bishan_/code/gaming-gl/Debug /home/bishan_/code/gaming-gl/Debug /home/bishan_/code/gaming-gl/Debug/CMakeFiles/gaming-gl.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/gaming-gl.dir/depend

