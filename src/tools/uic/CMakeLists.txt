set(target_name uic)

file(GLOB root_files *.cpp *.h)
file(GLOB cpp_files cpp/*.cpp cpp/*.h)

source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${root_files} ${cpp_files})

set(source_files
  ${root_files}
  ${cpp_files}
)

add_executable(${target_name} ${source_files})

target_compile_definitions(${target_name} PRIVATE QT_UIC QT_TEXTCODEC QT_NO_TEXTCODEC QT_UIC_CPP_GENERATOR)
target_include_directories(${target_name} PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
target_include_directories(${target_name} PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/cpp)
target_include_directories(${target_name} PRIVATE ${CMAKE_SOURCE_DIR}/include/QtCore)
target_link_libraries(${target_name} PUBLIC bootstrap)

set_target_properties(${target_name} PROPERTIES FOLDER "tools")

install(TARGETS ${target_name} RUNTIME DESTINATION bin ARCHIVE DESTINATION lib LIBRARY DESTINATION lib )
