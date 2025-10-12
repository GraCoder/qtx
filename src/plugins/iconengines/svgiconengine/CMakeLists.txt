cmake_minimum_required(VERSION 3.28)

set(target_name qsvgicon)

file(GLOB source_files *.cpp *.h)
source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${source_files})

set(CMAKE_AUTOMOC ON)


add_library(${target_name} STATIC ${source_files})

target_include_directories(${target_name} PUBLIC ${CMAKE_SOURCE_DIR}/include/QtCore)
target_include_directories(${target_name} PUBLIC ${CMAKE_SOURCE_DIR}/include/QtGui)
target_include_directories(${target_name} PUBLIC ${CMAKE_SOURCE_DIR}/include/QtSvg)

set_target_properties(${target_name} PROPERTIES FOLDER "plugins/iconengines")
install(TARGETS ${target_name} RUNTIME 
  ARCHIVE DESTINATION plugins/iconengines
  LIBRARY DESTINATION plugins/iconengines
)