# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /home/sgengine/Downloads/clion-2018.2.4/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/sgengine/Downloads/clion-2018.2.4/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/sgengine/Documents/Linux Net Study/client_test"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/sgengine/Documents/Linux Net Study/client_test/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/client_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/client_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/client_test.dir/flags.make

CMakeFiles/client_test.dir/main.cpp.o: CMakeFiles/client_test.dir/flags.make
CMakeFiles/client_test.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/sgengine/Documents/Linux Net Study/client_test/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/client_test.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/client_test.dir/main.cpp.o -c "/home/sgengine/Documents/Linux Net Study/client_test/main.cpp"

CMakeFiles/client_test.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client_test.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/sgengine/Documents/Linux Net Study/client_test/main.cpp" > CMakeFiles/client_test.dir/main.cpp.i

CMakeFiles/client_test.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client_test.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/sgengine/Documents/Linux Net Study/client_test/main.cpp" -o CMakeFiles/client_test.dir/main.cpp.s

# Object files for target client_test
client_test_OBJECTS = \
"CMakeFiles/client_test.dir/main.cpp.o"

# External object files for target client_test
client_test_EXTERNAL_OBJECTS =

client_test: CMakeFiles/client_test.dir/main.cpp.o
client_test: CMakeFiles/client_test.dir/build.make
client_test: CMakeFiles/client_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/sgengine/Documents/Linux Net Study/client_test/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable client_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/client_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/client_test.dir/build: client_test

.PHONY : CMakeFiles/client_test.dir/build

CMakeFiles/client_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/client_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/client_test.dir/clean

CMakeFiles/client_test.dir/depend:
	cd "/home/sgengine/Documents/Linux Net Study/client_test/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/sgengine/Documents/Linux Net Study/client_test" "/home/sgengine/Documents/Linux Net Study/client_test" "/home/sgengine/Documents/Linux Net Study/client_test/cmake-build-debug" "/home/sgengine/Documents/Linux Net Study/client_test/cmake-build-debug" "/home/sgengine/Documents/Linux Net Study/client_test/cmake-build-debug/CMakeFiles/client_test.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/client_test.dir/depend
