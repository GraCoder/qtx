set(target_name rcc)

set(source_files
  main.cpp
  rcc.cpp
  rcc.h
)

add_executable(${target_name} ${source_files})

target_compile_definitions(${target_name} PRIVATE QT_RCC QT_TEXTCODEC QT_NO_TEXTCODEC)
target_include_directories(${target_name} PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
target_include_directories(${target_name} PRIVATE ${CMAKE_SOURCE_DIR}/include/QtCore)
target_link_libraries(${target_name} PUBLIC bootstrap)

set_target_properties(${target_name} PROPERTIES FOLDER "tools")
