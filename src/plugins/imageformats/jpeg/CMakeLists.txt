set(target_name qjpeg)

file(GLOB source_files *.cpp *.h *.c)
source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${source_files})

#set(CMAKE_AUTOMOC ON)

add_library(${target_name} STATIC ${source_files})

target_include_directories(${target_name} PUBLIC ${CMAKE_SOURCE_DIR}/include/QtCore)
target_include_directories(${target_name} PUBLIC ${CMAKE_SOURCE_DIR}/include/QtGui)


set_target_properties(${target_name} PROPERTIES FOLDER "plugins/imageformats")
install(TARGETS ${target_name} 
  ARCHIVE DESTINATION plugins/imageformats
  LIBRARY DESTINATION plugins/imageformats
)
