cmake_minimum_required(VERSION 3.18.3)

set(CMAKE_CXX_STANDARD 17)

set(NAME 3dparty)

project(${NAME} LANGUAGES CXX)

add_subdirectory(taglib)
