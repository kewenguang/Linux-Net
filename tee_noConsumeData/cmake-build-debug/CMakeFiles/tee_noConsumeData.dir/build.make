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
CMAKE_SOURCE_DIR = "/home/sgengine/Documents/Linux Net Study/tee_noConsumeData"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/sgengine/Documents/Linux Net Study/tee_noConsumeData/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/tee_noConsumeData.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/tee_noConsumeData.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tee_noConsumeData.dir/flags.make

CMakeFiles/tee_noConsumeData.dir/main.cpp.o: CMakeFiles/tee_noConsumeData.dir/flags.make
CMakeFiles/tee_noConsumeData.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/sgengine/Documents/Linux Net Study/tee_noConsumeData/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tee_noConsumeData.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tee_noConsumeData.dir/main.cpp.o -c "/home/sgengine/Documents/Linux Net Study/tee_noConsumeData/main.cpp"

CMakeFiles/tee_noConsumeData.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tee_noConsumeData.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/sgengine/Documents/Linux Net Study/tee_noConsumeData/main.cpp" > CMakeFiles/tee_noConsumeData.dir/main.cpp.i

CMakeFiles/tee_noConsumeData.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tee_noConsumeData.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/sgengine/Documents/Linux Net Study/tee_noConsumeData/main.cpp" -o CMakeFiles/tee_noConsumeData.dir/main.cpp.s

# Object files for target tee_noConsumeData
tee_noConsumeData_OBJECTS = \
"CMakeFiles/tee_noConsumeData.dir/main.cpp.o"

# External object files for target tee_noConsumeData
tee_noConsumeData_EXTERNAL_OBJECTS =

tee_noConsumeData: CMakeFiles/tee_noConsumeData.dir/main.cpp.o
tee_noConsumeData: CMakeFiles/tee_noConsumeData.dir/build.make
tee_noConsumeData: CMakeFiles/tee_noConsumeData.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/sgengine/Documents/Linux Net Study/tee_noConsumeData/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable tee_noConsumeData"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tee_noConsumeData.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tee_noConsumeData.dir/build: tee_noConsumeData

.PHONY : CMakeFiles/tee_noConsumeData.dir/build

CMakeFiles/tee_noConsumeData.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tee_noConsumeData.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tee_noConsumeData.dir/clean

CMakeFiles/tee_noConsumeData.dir/depend:
	cd "/home/sgengine/Documents/Linux Net Study/tee_noConsumeData/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/sgengine/Documents/Linux Net Study/tee_noConsumeData" "/home/sgengine/Documents/Linux Net Study/tee_noConsumeData" "/home/sgengine/Documents/Linux Net Study/tee_noConsumeData/cmake-build-debug" "/home/sgengine/Documents/Linux Net Study/tee_noConsumeData/cmake-build-debug" "/home/sgengine/Documents/Linux Net Study/tee_noConsumeData/cmake-build-debug/CMakeFiles/tee_noConsumeData.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/tee_noConsumeData.dir/depend

