set(target_name qtest)

set(source_files
	main.cpp
	MainDlg.h
	MainDlg.cpp

	WindowBar.h
	WindowBar.cpp
)

set(gen_dir ${CMAKE_CURRENT_BINARY_DIR}/qtest.gen/$<CONFIG>)

set(rcc_files
  qtest.qrc
)
foreach(rcc_file ${rcc_files})
  get_filename_component(file_name ${rcc_file} NAME_WE)
  set(output_file ${gen_dir}/qrc_${file_name}.cpp)
  add_custom_command(
      OUTPUT ${output_file}
      COMMAND ${rcc_exe} -name ${file_name} -o ${output_file} ${CMAKE_CURRENT_SOURCE_DIR}/${rcc_file}
      DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/${rcc_file}
      VERBATIM
  )
  list(APPEND gens ${output_file})
endforeach()

set(moc_files
  MainDlg.h
  WindowBar.h
)
foreach(moc_file ${moc_files})
  get_filename_component(file_name ${moc_file} NAME_WE)
  set(output_file ${gen_dir}/moc_${file_name}.cpp)
  add_custom_command(
      OUTPUT ${output_file}
      COMMAND ${moc_exe} -o ${output_file} ${CMAKE_CURRENT_SOURCE_DIR}/${moc_file}
      DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/${moc_file}
      VERBATIM
  )
  list(APPEND gens ${output_file})
endforeach()

add_executable(${target_name} ${source_files} ${gens})

add_custom_command(TARGET ${target_name} PRE_BUILD COMMAND ${CMAKE_COMMAND} -E make_directory ${gen_dir})

target_include_directories(${target_name} PRIVATE ${CMAKE_SOURCE_DIR}/include)

target_link_libraries(${target_name} PRIVATE QtCore QtGui QtSvg qtmain qsvg qsvgicon qjpeg)

set_target_properties(${target_name} PROPERTIES FOLDER "test")
