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
include CMakeFiles/calculatorTCP_client.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/calculatorTCP_client.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/calculatorTCP_client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/calculatorTCP_client.dir/flags.make

CMakeFiles/calculatorTCP_client.dir/calculatorTCP/ClientProcess.cpp.o: CMakeFiles/calculatorTCP_client.dir/flags.make
CMakeFiles/calculatorTCP_client.dir/calculatorTCP/ClientProcess.cpp.o: /home/kasia/network-programming/socket/calculatorTCP/ClientProcess.cpp
CMakeFiles/calculatorTCP_client.dir/calculatorTCP/ClientProcess.cpp.o: CMakeFiles/calculatorTCP_client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kasia/network-programming/socket/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/calculatorTCP_client.dir/calculatorTCP/ClientProcess.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/calculatorTCP_client.dir/calculatorTCP/ClientProcess.cpp.o -MF CMakeFiles/calculatorTCP_client.dir/calculatorTCP/ClientProcess.cpp.o.d -o CMakeFiles/calculatorTCP_client.dir/calculatorTCP/ClientProcess.cpp.o -c /home/kasia/network-programming/socket/calculatorTCP/ClientProcess.cpp

CMakeFiles/calculatorTCP_client.dir/calculatorTCP/ClientProcess.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/calculatorTCP_client.dir/calculatorTCP/ClientProcess.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kasia/network-programming/socket/calculatorTCP/ClientProcess.cpp > CMakeFiles/calculatorTCP_client.dir/calculatorTCP/ClientProcess.cpp.i

CMakeFiles/calculatorTCP_client.dir/calculatorTCP/ClientProcess.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/calculatorTCP_client.dir/calculatorTCP/ClientProcess.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kasia/network-programming/socket/calculatorTCP/ClientProcess.cpp -o CMakeFiles/calculatorTCP_client.dir/calculatorTCP/ClientProcess.cpp.s

# Object files for target calculatorTCP_client
calculatorTCP_client_OBJECTS = \
"CMakeFiles/calculatorTCP_client.dir/calculatorTCP/ClientProcess.cpp.o"

# External object files for target calculatorTCP_client
calculatorTCP_client_EXTERNAL_OBJECTS =

calculatorTCP_client: CMakeFiles/calculatorTCP_client.dir/calculatorTCP/ClientProcess.cpp.o
calculatorTCP_client: CMakeFiles/calculatorTCP_client.dir/build.make
calculatorTCP_client: CMakeFiles/calculatorTCP_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kasia/network-programming/socket/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable calculatorTCP_client"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/calculatorTCP_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/calculatorTCP_client.dir/build: calculatorTCP_client
.PHONY : CMakeFiles/calculatorTCP_client.dir/build

CMakeFiles/calculatorTCP_client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/calculatorTCP_client.dir/cmake_clean.cmake
.PHONY : CMakeFiles/calculatorTCP_client.dir/clean

CMakeFiles/calculatorTCP_client.dir/depend:
	cd /home/kasia/network-programming/socket/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kasia/network-programming/socket /home/kasia/network-programming/socket /home/kasia/network-programming/socket/cmake-build-debug /home/kasia/network-programming/socket/cmake-build-debug /home/kasia/network-programming/socket/cmake-build-debug/CMakeFiles/calculatorTCP_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/calculatorTCP_client.dir/depend

