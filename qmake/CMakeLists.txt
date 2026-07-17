set(target_name qmake)

set(source_files
  main.cpp
  option.cpp
  #meta.cpp
  property.cpp
  #project.cpp
  #generators/metamakefile.cpp
  #generators/projectgenerator.cpp
  #generators/xmloutput.cpp
  #generators/makefile.cpp
  #generators/makefiledeps.cpp
  #generators/win32/borland_bmake.cpp
  #generators/win32/mingw_make.cpp
  #generators/win32/msbuild_objectmodel.cpp
  #generators/win32/msvc_nmake.cpp
  #generators/win32/msvc_objectmodel.cpp
  #generators/win32/winmakefile.cpp
  #generators/win32/msvc_vcproj.cpp
  #generators/win32/msvc_vcxproj.cpp
)

add_executable(${target_name} ${source_files})

target_include_directories(${target_name} PRIVATE ${CMAKE_SOURCE_DIR}/include/QtCore)
target_include_directories(${target_name} PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
target_include_directories(${target_name} PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/generators)
target_link_libraries(${target_name} PUBLIC bootstrap)

set_target_properties(${target_name} PROPERTIES FOLDER "tools")

install(TARGETS ${target_name} RUNTIME DESTINATION bin ARCHIVE DESTINATION lib LIBRARY DESTINATION lib )
