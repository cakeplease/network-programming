cmake_minimum_required(VERSION 3.24)
project(socket)

set(CMAKE_CXX_STANDARD 17)

add_executable(server ServerProcess.cpp)
add_executable(client ClientProcess.cpp)
