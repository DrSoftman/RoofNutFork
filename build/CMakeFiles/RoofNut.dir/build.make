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
include CMakeFiles/RoofNut.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/RoofNut.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/RoofNut.dir/flags.make

CMakeFiles/RoofNut.dir/src/application_opengl.c.o: CMakeFiles/RoofNut.dir/flags.make
CMakeFiles/RoofNut.dir/src/application_opengl.c.o: ../src/application_opengl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/RoofNut/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/RoofNut.dir/src/application_opengl.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/RoofNut.dir/src/application_opengl.c.o   -c /workspaces/RoofNut/src/application_opengl.c

CMakeFiles/RoofNut.dir/src/application_opengl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/RoofNut.dir/src/application_opengl.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /workspaces/RoofNut/src/application_opengl.c > CMakeFiles/RoofNut.dir/src/application_opengl.c.i

CMakeFiles/RoofNut.dir/src/application_opengl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/RoofNut.dir/src/application_opengl.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /workspaces/RoofNut/src/application_opengl.c -o CMakeFiles/RoofNut.dir/src/application_opengl.c.s

CMakeFiles/RoofNut.dir/src/input.c.o: CMakeFiles/RoofNut.dir/flags.make
CMakeFiles/RoofNut.dir/src/input.c.o: ../src/input.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/RoofNut/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/RoofNut.dir/src/input.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/RoofNut.dir/src/input.c.o   -c /workspaces/RoofNut/src/input.c

CMakeFiles/RoofNut.dir/src/input.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/RoofNut.dir/src/input.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /workspaces/RoofNut/src/input.c > CMakeFiles/RoofNut.dir/src/input.c.i

CMakeFiles/RoofNut.dir/src/input.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/RoofNut.dir/src/input.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /workspaces/RoofNut/src/input.c -o CMakeFiles/RoofNut.dir/src/input.c.s

CMakeFiles/RoofNut.dir/src/Utilites.c.o: CMakeFiles/RoofNut.dir/flags.make
CMakeFiles/RoofNut.dir/src/Utilites.c.o: ../src/Utilites.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/RoofNut/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/RoofNut.dir/src/Utilites.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/RoofNut.dir/src/Utilites.c.o   -c /workspaces/RoofNut/src/Utilites.c

CMakeFiles/RoofNut.dir/src/Utilites.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/RoofNut.dir/src/Utilites.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /workspaces/RoofNut/src/Utilites.c > CMakeFiles/RoofNut.dir/src/Utilites.c.i

CMakeFiles/RoofNut.dir/src/Utilites.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/RoofNut.dir/src/Utilites.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /workspaces/RoofNut/src/Utilites.c -o CMakeFiles/RoofNut.dir/src/Utilites.c.s

# Object files for target RoofNut
RoofNut_OBJECTS = \
"CMakeFiles/RoofNut.dir/src/application_opengl.c.o" \
"CMakeFiles/RoofNut.dir/src/input.c.o" \
"CMakeFiles/RoofNut.dir/src/Utilites.c.o"

# External object files for target RoofNut
RoofNut_EXTERNAL_OBJECTS =

libRoofNut.a: CMakeFiles/RoofNut.dir/src/application_opengl.c.o
libRoofNut.a: CMakeFiles/RoofNut.dir/src/input.c.o
libRoofNut.a: CMakeFiles/RoofNut.dir/src/Utilites.c.o
libRoofNut.a: CMakeFiles/RoofNut.dir/build.make
libRoofNut.a: CMakeFiles/RoofNut.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/workspaces/RoofNut/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C static library libRoofNut.a"
	$(CMAKE_COMMAND) -P CMakeFiles/RoofNut.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RoofNut.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/RoofNut.dir/build: libRoofNut.a

.PHONY : CMakeFiles/RoofNut.dir/build

CMakeFiles/RoofNut.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/RoofNut.dir/cmake_clean.cmake
.PHONY : CMakeFiles/RoofNut.dir/clean

CMakeFiles/RoofNut.dir/depend:
	cd /workspaces/RoofNut/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/RoofNut /workspaces/RoofNut /workspaces/RoofNut/build /workspaces/RoofNut/build /workspaces/RoofNut/build/CMakeFiles/RoofNut.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/RoofNut.dir/depend

