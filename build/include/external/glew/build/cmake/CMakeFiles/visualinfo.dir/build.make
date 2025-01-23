# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /workspaces/RoofNut

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /workspaces/RoofNut/build

# Include any dependencies generated for this target.
include include/external/glew/build/cmake/CMakeFiles/visualinfo.dir/depend.make

# Include the progress variables for this target.
include include/external/glew/build/cmake/CMakeFiles/visualinfo.dir/progress.make

# Include the compile flags for this target's objects.
include include/external/glew/build/cmake/CMakeFiles/visualinfo.dir/flags.make

include/external/glew/build/cmake/CMakeFiles/visualinfo.dir/__/__/src/visualinfo.c.o: include/external/glew/build/cmake/CMakeFiles/visualinfo.dir/flags.make
include/external/glew/build/cmake/CMakeFiles/visualinfo.dir/__/__/src/visualinfo.c.o: ../include/external/glew/src/visualinfo.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/RoofNut/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object include/external/glew/build/cmake/CMakeFiles/visualinfo.dir/__/__/src/visualinfo.c.o"
	cd /workspaces/RoofNut/build/include/external/glew/build/cmake && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/visualinfo.dir/__/__/src/visualinfo.c.o   -c /workspaces/RoofNut/include/external/glew/src/visualinfo.c

include/external/glew/build/cmake/CMakeFiles/visualinfo.dir/__/__/src/visualinfo.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/visualinfo.dir/__/__/src/visualinfo.c.i"
	cd /workspaces/RoofNut/build/include/external/glew/build/cmake && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /workspaces/RoofNut/include/external/glew/src/visualinfo.c > CMakeFiles/visualinfo.dir/__/__/src/visualinfo.c.i

include/external/glew/build/cmake/CMakeFiles/visualinfo.dir/__/__/src/visualinfo.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/visualinfo.dir/__/__/src/visualinfo.c.s"
	cd /workspaces/RoofNut/build/include/external/glew/build/cmake && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /workspaces/RoofNut/include/external/glew/src/visualinfo.c -o CMakeFiles/visualinfo.dir/__/__/src/visualinfo.c.s

# Object files for target visualinfo
visualinfo_OBJECTS = \
"CMakeFiles/visualinfo.dir/__/__/src/visualinfo.c.o"

# External object files for target visualinfo
visualinfo_EXTERNAL_OBJECTS =

bin/visualinfo: include/external/glew/build/cmake/CMakeFiles/visualinfo.dir/__/__/src/visualinfo.c.o
bin/visualinfo: include/external/glew/build/cmake/CMakeFiles/visualinfo.dir/build.make
bin/visualinfo: lib/libGLEW.so
bin/visualinfo: /usr/lib/x86_64-linux-gnu/libSM.so
bin/visualinfo: /usr/lib/x86_64-linux-gnu/libICE.so
bin/visualinfo: /usr/lib/x86_64-linux-gnu/libX11.so
bin/visualinfo: /usr/lib/x86_64-linux-gnu/libXext.so
bin/visualinfo: /usr/lib/x86_64-linux-gnu/libOpenGL.so
bin/visualinfo: /usr/lib/x86_64-linux-gnu/libGLX.so
bin/visualinfo: /usr/lib/x86_64-linux-gnu/libGLU.so
bin/visualinfo: include/external/glew/build/cmake/CMakeFiles/visualinfo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/workspaces/RoofNut/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ../../../../../bin/visualinfo"
	cd /workspaces/RoofNut/build/include/external/glew/build/cmake && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/visualinfo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
include/external/glew/build/cmake/CMakeFiles/visualinfo.dir/build: bin/visualinfo

.PHONY : include/external/glew/build/cmake/CMakeFiles/visualinfo.dir/build

include/external/glew/build/cmake/CMakeFiles/visualinfo.dir/clean:
	cd /workspaces/RoofNut/build/include/external/glew/build/cmake && $(CMAKE_COMMAND) -P CMakeFiles/visualinfo.dir/cmake_clean.cmake
.PHONY : include/external/glew/build/cmake/CMakeFiles/visualinfo.dir/clean

include/external/glew/build/cmake/CMakeFiles/visualinfo.dir/depend:
	cd /workspaces/RoofNut/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/RoofNut /workspaces/RoofNut/include/external/glew/build/cmake /workspaces/RoofNut/build /workspaces/RoofNut/build/include/external/glew/build/cmake /workspaces/RoofNut/build/include/external/glew/build/cmake/CMakeFiles/visualinfo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : include/external/glew/build/cmake/CMakeFiles/visualinfo.dir/depend

