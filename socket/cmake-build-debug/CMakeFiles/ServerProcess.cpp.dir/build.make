# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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
CMAKE_COMMAND = /home/kasia/clion-2022.3.2/bin/cmake/linux/x64/bin/cmake

# The command to remove a file.
RM = /home/kasia/clion-2022.3.2/bin/cmake/linux/x64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kasia/network-programming/socket

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kasia/network-programming/socket/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/ServerProcess.cpp.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ServerProcess.cpp.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ServerProcess.cpp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ServerProcess.cpp.dir/flags.make

CMakeFiles/ServerProcess.cpp.dir/ClientProcess.cpp.o: CMakeFiles/ServerProcess.cpp.dir/flags.make
CMakeFiles/ServerProcess.cpp.dir/ClientProcess.cpp.o: /home/kasia/network-programming/socket/ClientProcess.cpp
CMakeFiles/ServerProcess.cpp.dir/ClientProcess.cpp.o: CMakeFiles/ServerProcess.cpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kasia/network-programming/socket/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ServerProcess.cpp.dir/ClientProcess.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ServerProcess.cpp.dir/ClientProcess.cpp.o -MF CMakeFiles/ServerProcess.cpp.dir/ClientProcess.cpp.o.d -o CMakeFiles/ServerProcess.cpp.dir/ClientProcess.cpp.o -c /home/kasia/network-programming/socket/ClientProcess.cpp

CMakeFiles/ServerProcess.cpp.dir/ClientProcess.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ServerProcess.cpp.dir/ClientProcess.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kasia/network-programming/socket/ClientProcess.cpp > CMakeFiles/ServerProcess.cpp.dir/ClientProcess.cpp.i

CMakeFiles/ServerProcess.cpp.dir/ClientProcess.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ServerProcess.cpp.dir/ClientProcess.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kasia/network-programming/socket/ClientProcess.cpp -o CMakeFiles/ServerProcess.cpp.dir/ClientProcess.cpp.s

# Object files for target ServerProcess.cpp
ServerProcess_cpp_OBJECTS = \
"CMakeFiles/ServerProcess.cpp.dir/ClientProcess.cpp.o"

# External object files for target ServerProcess.cpp
ServerProcess_cpp_EXTERNAL_OBJECTS =

ServerProcess.cpp: CMakeFiles/ServerProcess.cpp.dir/ClientProcess.cpp.o
ServerProcess.cpp: CMakeFiles/ServerProcess.cpp.dir/build.make
ServerProcess.cpp: CMakeFiles/ServerProcess.cpp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kasia/network-programming/socket/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ServerProcess.cpp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ServerProcess.cpp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ServerProcess.cpp.dir/build: ServerProcess.cpp
.PHONY : CMakeFiles/ServerProcess.cpp.dir/build

CMakeFiles/ServerProcess.cpp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ServerProcess.cpp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ServerProcess.cpp.dir/clean

CMakeFiles/ServerProcess.cpp.dir/depend:
	cd /home/kasia/network-programming/socket/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kasia/network-programming/socket /home/kasia/network-programming/socket /home/kasia/network-programming/socket/cmake-build-debug /home/kasia/network-programming/socket/cmake-build-debug /home/kasia/network-programming/socket/cmake-build-debug/CMakeFiles/ServerProcess.cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ServerProcess.cpp.dir/depend

