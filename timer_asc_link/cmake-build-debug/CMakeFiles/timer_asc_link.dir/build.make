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
CMAKE_SOURCE_DIR = "/home/sgengine/Documents/Linux Net Study/timer_asc_link"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/sgengine/Documents/Linux Net Study/timer_asc_link/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/timer_asc_link.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/timer_asc_link.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/timer_asc_link.dir/flags.make

CMakeFiles/timer_asc_link.dir/main.cpp.o: CMakeFiles/timer_asc_link.dir/flags.make
CMakeFiles/timer_asc_link.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/sgengine/Documents/Linux Net Study/timer_asc_link/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/timer_asc_link.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/timer_asc_link.dir/main.cpp.o -c "/home/sgengine/Documents/Linux Net Study/timer_asc_link/main.cpp"

CMakeFiles/timer_asc_link.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/timer_asc_link.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/sgengine/Documents/Linux Net Study/timer_asc_link/main.cpp" > CMakeFiles/timer_asc_link.dir/main.cpp.i

CMakeFiles/timer_asc_link.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/timer_asc_link.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/sgengine/Documents/Linux Net Study/timer_asc_link/main.cpp" -o CMakeFiles/timer_asc_link.dir/main.cpp.s

# Object files for target timer_asc_link
timer_asc_link_OBJECTS = \
"CMakeFiles/timer_asc_link.dir/main.cpp.o"

# External object files for target timer_asc_link
timer_asc_link_EXTERNAL_OBJECTS =

timer_asc_link: CMakeFiles/timer_asc_link.dir/main.cpp.o
timer_asc_link: CMakeFiles/timer_asc_link.dir/build.make
timer_asc_link: CMakeFiles/timer_asc_link.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/sgengine/Documents/Linux Net Study/timer_asc_link/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable timer_asc_link"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/timer_asc_link.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/timer_asc_link.dir/build: timer_asc_link

.PHONY : CMakeFiles/timer_asc_link.dir/build

CMakeFiles/timer_asc_link.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/timer_asc_link.dir/cmake_clean.cmake
.PHONY : CMakeFiles/timer_asc_link.dir/clean

CMakeFiles/timer_asc_link.dir/depend:
	cd "/home/sgengine/Documents/Linux Net Study/timer_asc_link/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/sgengine/Documents/Linux Net Study/timer_asc_link" "/home/sgengine/Documents/Linux Net Study/timer_asc_link" "/home/sgengine/Documents/Linux Net Study/timer_asc_link/cmake-build-debug" "/home/sgengine/Documents/Linux Net Study/timer_asc_link/cmake-build-debug" "/home/sgengine/Documents/Linux Net Study/timer_asc_link/cmake-build-debug/CMakeFiles/timer_asc_link.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/timer_asc_link.dir/depend

