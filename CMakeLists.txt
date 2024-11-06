cmake_minimum_required(VERSION 3.8)

project(qtx)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set_property(GLOBAL PROPERTY USE_FOLDERS ON)

find_package(Qt4 REQUIRED)

add_definitions(-DUNICODE -D_UNICODE)

include_directories(${CMAKE_SOURCE_DIR}/include)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

option(build_shared "" OFF)
if(build_shared)
set(target_flag SHARED)
add_definitions(-DQT_MAKEDLL)
else()
set(target_flag STATIC)
endif()


add_subdirectory(src)

add_subdirectory(test)
