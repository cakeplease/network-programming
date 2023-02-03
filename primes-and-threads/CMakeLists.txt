cmake_minimum_required(VERSION 3.24)
project(primes_and_threads)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_FLAGS "-O3 -Wall -Wextra")
add_executable(primes_and_threads main.cpp)
