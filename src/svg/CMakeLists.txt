set(target_name QtSvg)

file(GLOB source_files *.cpp *.h)
source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${source_files})

set(gen_dir ${CMAKE_CURRENT_BINARY_DIR}/QtSvg.gen/$<CONFIG>)

set(moc_files
  qsvgwidget.h
  qgraphicssvgitem.h
  qsvgrenderer.h
)
foreach(moc_file ${moc_files})
  get_filename_component(file_name ${moc_file} NAME_WE)
  set(output_file ${gen_dir}/moc_${file_name}.cpp)
  add_custom_command(
      OUTPUT ${output_file}
      COMMAND ${CMAKE_COMMAND} -E make_directory ${gen_dir}
      COMMAND ${moc_exe} -I${CMAKE_SOURCE_DIR}/include -o ${output_file} ${CMAKE_CURRENT_SOURCE_DIR}/${moc_file}
      DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/${moc_file}
      VERBATIM
  )
  list(APPEND gens ${output_file})
endforeach()

add_library(${target_name} STATIC ${source_files} ${gens})

target_include_directories(${target_name} PUBLIC ${CMAKE_SOURCE_DIR}/include/QtCore)
target_include_directories(${target_name} PUBLIC ${CMAKE_SOURCE_DIR}/include/QtGui)
target_include_directories(${target_name} PUBLIC ${CMAKE_SOURCE_DIR}/include/QtSvg)
target_include_directories(${target_name} PRIVATE ${gen_dir})

target_include_directories(${target_name} PRIVATE ${CMAKE_SOURCE_DIR}/src/3rd)

install(TARGETS ${target_name} RUNTIME DESTINATION bin ARCHIVE DESTINATION lib LIBRARY DESTINATION lib )

include(install.cmake)
