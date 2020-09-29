cmake_minimum_required(VERSION 3.18.3)

set(CMAKE_CXX_STANDARD 17)

find_package(Qt5 COMPONENTS Widgets REQUIRED)
find_library(TAGLIB libtag)

SET(PLATFORM_SPECIFIC_LIBS "-lpthread")

file(GLOB SRC *.cpp)

add_library(app ${SRC})

target_link_libraries(app tag Qt5::Widgets Qt5::Core -lpthread)
