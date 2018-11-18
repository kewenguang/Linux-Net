cmake_minimum_required(VERSION 3.12)
project(epolloneshot_demo)

set(CMAKE_CXX_STANDARD 14)

add_executable(epolloneshot_demo main.cpp)

find_package(Threads REQUIRED)
target_link_libraries(epolloneshot_demo Threads::Threads)