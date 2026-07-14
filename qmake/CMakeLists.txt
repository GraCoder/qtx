set(target_name qmake)

set(source_files
  main.cpp
)

add_executable(${target_name} ${source_files})

target_include_directories(${target_name} PRIVATE ${CMAKE_SOURCE_DIR}/include/QtCore)
target_link_libraries(${target_name} PUBLIC bootstrap)

set_target_properties(${target_name} PROPERTIES FOLDER "tools")
