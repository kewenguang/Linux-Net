cmake_minimum_required(VERSION 3.12)
project(relation_between_process_and_thread)

set(CMAKE_CXX_STANDARD 14)

add_executable(relation_between_process_and_thread main.cpp)

find_package(Threads REQUIRED)
target_link_libraries(relation_between_process_and_thread Threads::Threads)