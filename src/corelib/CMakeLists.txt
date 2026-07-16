set(target_name QtCore)

file(GLOB global_files global/*.cpp global/*.h)
file(GLOB kernel_files kernel/*.cpp kernel/*.h)
file(GLOB tools_files tools/*.cpp tools/*.h)
file(GLOB io_files io/*.cpp io/*.h)
file(GLOB thread_files thread/*.cpp thread/*.h)
file(GLOB codecs_files codecs/*.cpp codecs/*.h)
file(GLOB xml_files xml/*.cpp xml/*.h)
file(GLOB plugin_files plugin/*.cpp plugin/*.h)

source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES 
	${kernel_files} ${global_files} ${tools_files}
	${io_files} ${thread_files} ${codecs_files} ${xml_files} ${plugin_files}
)

set(gen_dir ${CMAKE_CURRENT_BINARY_DIR}/QtCore.gen/$<CONFIG>)

set(moc_files
    kernel/qabstracteventdispatcher.h
    kernel/qabstractitemmodel.h
    kernel/qcoreapplication.h
    kernel/qeventdispatcher_win_p.h
    kernel/qeventloop.h
    kernel/qmimedata.h
    kernel/qobjectcleanuphandler.h
    #kernel/qsharedmemory.h
    #kernel/qsignalmapper.h
    kernel/qtimer.h
    #kernel/qtranslator.h
    kernel/qwineventnotifier_p.h
    #kernel/tmp/qeventdispatcher_blackberry_p.h
    #kernel/tmp/qeventdispatcher_glib_p.h
    #kernel/tmp/qeventdispatcher_symbian_p.h
    #kernel/tmp/qeventdispatcher_unix_p.h
    io/qfile.h
    io/qfilesystemwatcher_p.h
    io/qfilesystemwatcher_win_p.h
    io/qiodevice.h
    io/qnoncontiguousbytedevice_p.h
    #io/qsettings.h
    io/qtemporaryfile.h
    io/qwindowspipewriter_p.h
    thread/qthread.h
    #codecs/tmp/qtextcodecplugin.h
    #plugin/qlibrary.h
    plugin/qfactoryloader_p.h
    #animation/qabstractanimation.h
    #animation/qabstractanimation_p.h
    #animation/qanimationgroup.h
    #animation/qparallelanimationgroup.h
    #animation/qpauseanimation.h
    #animation/qpropertyanimation.h
    #animation/qsequentialanimationgroup.h
    #animation/qvariantanimation.h
    #statemachine/qabstractstate.h
    #statemachine/qabstracttransition.h
    #statemachine/qeventtransition.h
    #statemachine/qfinalstate.h
    #statemachine/qhistorystate.h
    #statemachine/qsignaltransition.h
    #statemachine/qstate.h
    #statemachine/qstatemachine.h
    #concurrent/qfuturewatcher.h
    #concurrent/qthreadpool.h
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

add_library(${target_name} ${gens} 
	${kernel_files} ${global_files} ${tools_files}
	${io_files} ${thread_files} ${codecs_files} ${xml_files} ${plugin_files}
)

add_custom_command(TARGET ${target_name} PRE_BUILD COMMAND ${CMAKE_COMMAND} -E make_directory ${gen_dir})

set(gens)
set(moc_def -DQT_NO_GESTURES)

set(moc_files
  kernel/qobject.h
  global/qnamespace.h
  io/qbuffer.h
  io/qfilesystemwatcher.h
)
foreach(moc_file ${moc_files})
  get_filename_component(file_name ${moc_file} NAME_WE)
  set(output_file ${gen_dir}/moc_${file_name}.cpp)
  add_custom_command(
      OUTPUT ${output_file}
      COMMAND ${moc_exe} ${moc_def} -o ${output_file} ${CMAKE_CURRENT_SOURCE_DIR}/${moc_file}
      DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/${moc_file}
      VERBATIM
  )
  list(APPEND gens ${output_file})
endforeach()

set(moc_files
  kernel/qtimer.cpp
  io/qtextstream.cpp
  io/qfilesystemwatcher.cpp
)
foreach(moc_file ${moc_files})
  get_filename_component(file_name ${moc_file} NAME_WE)
  set(output_file ${gen_dir}/${file_name}.moc)
  add_custom_command(
      OUTPUT ${output_file}
      COMMAND ${moc_exe} ${moc_def} -o ${output_file} ${CMAKE_CURRENT_SOURCE_DIR}/${moc_file}
      DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/${moc_file}
      VERBATIM
  )
  list(APPEND gens ${output_file})
endforeach()

add_custom_target(QtCore.gen DEPENDS ${gens})
set_target_properties(QtCore.gen PROPERTIES FOLDER "gen")
add_dependencies(${target_name} QtCore.gen)

target_compile_definitions(${target_name} PUBLIC QT_HAVE_SSE QT_HAVE_SSE2 QT_HAVE_SSE3 QT_HAVE_SSSE3 QT_HAVE_SSE4_1 QT_HAVE_SSE4_2)

target_compile_definitions(${target_name} PRIVATE QT_BUILD_CORE_LIB)

target_include_directories(${target_name} PUBLIC ${CMAKE_SOURCE_DIR}/include/QtCore)
target_include_directories(${target_name} PRIVATE ${gen_dir})
target_include_directories(${target_name} PRIVATE ${CMAKE_SOURCE_DIR}/src/3rd)

target_sources(${target_name} PRIVATE $<TARGET_OBJECTS:zlib>)

install(TARGETS ${target_name} RUNTIME DESTINATION bin ARCHIVE DESTINATION lib LIBRARY DESTINATION lib )
