cmake_minimum_required(VERSION 3.24)
project(socket)

set(CMAKE_CXX_STANDARD 17)

add_executable(calculatorTCP_server calculatorTCP/ServerProcess.cpp)
add_executable(calculatorTCP_client calculatorTCP/ClientProcess.cpp)

add_executable(calculatorUDP_server calculatorUDP/ServerProcess.cpp)
add_executable(calculatorUDP_client calculatorUDP/ClientProcess.cpp)

add_executable(webTCP_server webTCP/ServerProcess.cpp)
add_executable(webTCP_client webTCP/ClientProcess.cpp)

add_executable(tls_server TLS/ServerProcess.cpp)
add_executable(tls_client TLS/ClientProcess.cpp)
