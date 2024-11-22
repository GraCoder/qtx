cmake_minimum_required(VERSION 3.26.0)

set(target_name harfbuzz)

list(APPEND source_files
  harfbuzz-shaper.cpp
  harfbuzz-buffer.c
  harfbuzz-gdef.c
  harfbuzz-gsub.c
  harfbuzz-gpos.c
  harfbuzz-impl.c
  harfbuzz-open.c
  harfbuzz-stream.c
)

source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${source_files})

add_library(${target_name} STATIC ${source_files} )

set_target_properties(${target_name} PROPERTIES FOLDER "3rd")

