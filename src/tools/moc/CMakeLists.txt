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

set(CMAKE_AUTOMOC ON)

add_executable(${target_name} ${source_files} ${qrcfiles})

target_include_directories(${target_name} PRIVATE ${CMAKE_SOURCE_DIR}/include/QtCore)

set_target_properties(${target_name} PROPERTIES FOLDER "tools")
