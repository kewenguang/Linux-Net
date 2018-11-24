cmake_minimum_required(VERSION 3.12)
project(deadlock)

set(CMAKE_CXX_STANDARD 14)

add_executable(deadlock main.cpp)

find_package(Threads REQUIRED)
target_link_libraries(deadlock Threads::Threads)