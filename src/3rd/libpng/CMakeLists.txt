cmake_minimum_required(VERSION 3.26.0)

set(target_name libpng)

file(GLOB source_files *.c)

add_library(${target_name} STATIC ${source_files} )

set_target_properties(${target_name} PROPERTIES FOLDER "3rd")

target_link_libraries(${target_name} PUBLIC zlib)

