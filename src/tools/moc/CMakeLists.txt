set(target_name moc)

set(source_files
  main.cpp
  generator.h
  generator.cpp
  moc.h
  moc.cpp
  parser.h
  parser.cpp
  preprocessor.h
  preprocessor.cpp
  token.h
  token.cpp

  outputrevision.h
)

add_executable(${target_name} ${source_files})

target_include_directories(${target_name} PRIVATE ${CMAKE_SOURCE_DIR}/include/QtCore)
target_link_libraries(${target_name} PUBLIC bootstrap)

set_target_properties(${target_name} PROPERTIES FOLDER "tools")
