cmake_minimum_required(VERSION 3.12)
project(one_thread_consum_all_signal)

set(CMAKE_CXX_STANDARD 14)

add_executable(one_thread_consum_all_signal main.cpp)

find_package(Threads REQUIRED)
target_link_libraries(one_thread_consum_all_signal Threads::Threads)