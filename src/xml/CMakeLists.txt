set(target_name QtXml)

file(GLOB dom_files dom/*.cpp dom/*.h)
file(GLOB sax_files sax/*.cpp sax/*.h)
file(GLOB stream_files stream/*.cpp stream/*.h)

source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES 
  ${dom_files} ${sax_files} ${stream_files}
)

add_library(${target_name}
  ${dom_files} ${sax_files} ${stream_files}
)

target_compile_definitions(${target_name} PRIVATE QT_BUILD_XML_LIB)

target_include_directories(${target_name} PUBLIC ${CMAKE_SOURCE_DIR}/include/QtCore)
target_include_directories(${target_name} PUBLIC ${CMAKE_SOURCE_DIR}/include/QtXml)

target_link_libraries(${target_name} PUBLIC QtCore)

install(TARGETS ${target_name} RUNTIME DESTINATION bin ARCHIVE DESTINATION lib LIBRARY DESTINATION lib )