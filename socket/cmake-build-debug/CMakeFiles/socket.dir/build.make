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
include CMakeFiles/socket.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/socket.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/socket.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/socket.dir/flags.make

CMakeFiles/socket.dir/main.cpp.o: CMakeFiles/socket.dir/flags.make
CMakeFiles/socket.dir/main.cpp.o: /home/kasia/network-programming/socket/main.cpp
CMakeFiles/socket.dir/main.cpp.o: CMakeFiles/socket.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kasia/network-programming/socket/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/socket.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/socket.dir/main.cpp.o -MF CMakeFiles/socket.dir/main.cpp.o.d -o CMakeFiles/socket.dir/main.cpp.o -c /home/kasia/network-programming/socket/main.cpp

CMakeFiles/socket.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kasia/network-programming/socket/main.cpp > CMakeFiles/socket.dir/main.cpp.i

CMakeFiles/socket.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kasia/network-programming/socket/main.cpp -o CMakeFiles/socket.dir/main.cpp.s

CMakeFiles/socket.dir/ServerProcess.cpp.o: CMakeFiles/socket.dir/flags.make
CMakeFiles/socket.dir/ServerProcess.cpp.o: /home/kasia/network-programming/socket/ServerProcess.cpp
CMakeFiles/socket.dir/ServerProcess.cpp.o: CMakeFiles/socket.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kasia/network-programming/socket/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/socket.dir/ServerProcess.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/socket.dir/ServerProcess.cpp.o -MF CMakeFiles/socket.dir/ServerProcess.cpp.o.d -o CMakeFiles/socket.dir/ServerProcess.cpp.o -c /home/kasia/network-programming/socket/ServerProcess.cpp

CMakeFiles/socket.dir/ServerProcess.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket.dir/ServerProcess.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kasia/network-programming/socket/ServerProcess.cpp > CMakeFiles/socket.dir/ServerProcess.cpp.i

CMakeFiles/socket.dir/ServerProcess.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket.dir/ServerProcess.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kasia/network-programming/socket/ServerProcess.cpp -o CMakeFiles/socket.dir/ServerProcess.cpp.s

CMakeFiles/socket.dir/ClientProcess.cpp.o: CMakeFiles/socket.dir/flags.make
CMakeFiles/socket.dir/ClientProcess.cpp.o: /home/kasia/network-programming/socket/ClientProcess.cpp
CMakeFiles/socket.dir/ClientProcess.cpp.o: CMakeFiles/socket.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kasia/network-programming/socket/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/socket.dir/ClientProcess.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/socket.dir/ClientProcess.cpp.o -MF CMakeFiles/socket.dir/ClientProcess.cpp.o.d -o CMakeFiles/socket.dir/ClientProcess.cpp.o -c /home/kasia/network-programming/socket/ClientProcess.cpp

CMakeFiles/socket.dir/ClientProcess.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket.dir/ClientProcess.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kasia/network-programming/socket/ClientProcess.cpp > CMakeFiles/socket.dir/ClientProcess.cpp.i

CMakeFiles/socket.dir/ClientProcess.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket.dir/ClientProcess.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kasia/network-programming/socket/ClientProcess.cpp -o CMakeFiles/socket.dir/ClientProcess.cpp.s

CMakeFiles/socket.dir/test.cpp.o: CMakeFiles/socket.dir/flags.make
CMakeFiles/socket.dir/test.cpp.o: /home/kasia/network-programming/socket/test.cpp
CMakeFiles/socket.dir/test.cpp.o: CMakeFiles/socket.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kasia/network-programming/socket/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/socket.dir/test.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/socket.dir/test.cpp.o -MF CMakeFiles/socket.dir/test.cpp.o.d -o CMakeFiles/socket.dir/test.cpp.o -c /home/kasia/network-programming/socket/test.cpp

CMakeFiles/socket.dir/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket.dir/test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kasia/network-programming/socket/test.cpp > CMakeFiles/socket.dir/test.cpp.i

CMakeFiles/socket.dir/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket.dir/test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kasia/network-programming/socket/test.cpp -o CMakeFiles/socket.dir/test.cpp.s

CMakeFiles/socket.dir/client.cpp.o: CMakeFiles/socket.dir/flags.make
CMakeFiles/socket.dir/client.cpp.o: /home/kasia/network-programming/socket/client.cpp
CMakeFiles/socket.dir/client.cpp.o: CMakeFiles/socket.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kasia/network-programming/socket/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/socket.dir/client.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/socket.dir/client.cpp.o -MF CMakeFiles/socket.dir/client.cpp.o.d -o CMakeFiles/socket.dir/client.cpp.o -c /home/kasia/network-programming/socket/client.cpp

CMakeFiles/socket.dir/client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket.dir/client.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kasia/network-programming/socket/client.cpp > CMakeFiles/socket.dir/client.cpp.i

CMakeFiles/socket.dir/client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket.dir/client.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kasia/network-programming/socket/client.cpp -o CMakeFiles/socket.dir/client.cpp.s

CMakeFiles/socket.dir/server.cpp.o: CMakeFiles/socket.dir/flags.make
CMakeFiles/socket.dir/server.cpp.o: /home/kasia/network-programming/socket/server.cpp
CMakeFiles/socket.dir/server.cpp.o: CMakeFiles/socket.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kasia/network-programming/socket/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/socket.dir/server.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/socket.dir/server.cpp.o -MF CMakeFiles/socket.dir/server.cpp.o.d -o CMakeFiles/socket.dir/server.cpp.o -c /home/kasia/network-programming/socket/server.cpp

CMakeFiles/socket.dir/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket.dir/server.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kasia/network-programming/socket/server.cpp > CMakeFiles/socket.dir/server.cpp.i

CMakeFiles/socket.dir/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket.dir/server.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kasia/network-programming/socket/server.cpp -o CMakeFiles/socket.dir/server.cpp.s

# Object files for target socket
socket_OBJECTS = \
"CMakeFiles/socket.dir/main.cpp.o" \
"CMakeFiles/socket.dir/ServerProcess.cpp.o" \
"CMakeFiles/socket.dir/ClientProcess.cpp.o" \
"CMakeFiles/socket.dir/test.cpp.o" \
"CMakeFiles/socket.dir/client.cpp.o" \
"CMakeFiles/socket.dir/server.cpp.o"

# External object files for target socket
socket_EXTERNAL_OBJECTS =

socket: CMakeFiles/socket.dir/main.cpp.o
socket: CMakeFiles/socket.dir/ServerProcess.cpp.o
socket: CMakeFiles/socket.dir/ClientProcess.cpp.o
socket: CMakeFiles/socket.dir/test.cpp.o
socket: CMakeFiles/socket.dir/client.cpp.o
socket: CMakeFiles/socket.dir/server.cpp.o
socket: CMakeFiles/socket.dir/build.make
socket: CMakeFiles/socket.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kasia/network-programming/socket/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable socket"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/socket.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/socket.dir/build: socket
.PHONY : CMakeFiles/socket.dir/build

CMakeFiles/socket.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/socket.dir/cmake_clean.cmake
.PHONY : CMakeFiles/socket.dir/clean

CMakeFiles/socket.dir/depend:
	cd /home/kasia/network-programming/socket/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kasia/network-programming/socket /home/kasia/network-programming/socket /home/kasia/network-programming/socket/cmake-build-debug /home/kasia/network-programming/socket/cmake-build-debug /home/kasia/network-programming/socket/cmake-build-debug/CMakeFiles/socket.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/socket.dir/depend

