cmake_minimum_required(VERSION 3.12)
project(share_memory_talk_room)

set(CMAKE_CXX_STANDARD 14)

add_executable(share_memory_talk_room main.cpp)

set(CMAKE_EXE_LINKER_FLAGS "-lpthread -lrt")