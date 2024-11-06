cmake_minimum_required(VERSION 3.28)

set(target_name QtCore)

file(GLOB global_files global/*.cpp global/*.h)
source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${global_files})

file(GLOB kernel_files kernel/*.cpp kernel/*.h)
source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${kernel_files})

file(GLOB tools_files tools/*.cpp tools/*.h)
source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${tools_files})

file(GLOB io_files io/*.cpp io/*.h)
source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${io_files})

file(GLOB thread_files thread/*.cpp thread/*.h)
source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${thread_files})

file(GLOB codecs_files codecs/*.cpp codecs/*.h)
source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${codecs_files})

file(GLOB plugin_files plugin/*.cpp plugin/*.h)
source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${plugin_files})

set(CMAKE_AUTOMOC ON)
#set_property(SOURCE kernel/qobject.cpp PROPERTY SKIP_AUTOMOC ON)

#qt4_wrap_cpp(mocfiles ${moc_h})
#source_group("moc" FILES ${mocfiles})

if(build_shared)
set(target_flag SHARED)
endif()

add_library(${target_name} ${target_flag} ${mocfiles} ${kernel_files} ${global_files} ${tools_files}
	${io_files}
	${thread_files} 
	${codecs_files}
  ${plugin_files}
)

target_compile_definitions(${target_name} PUBLIC QT_HAVE_SSE QT_HAVE_SSE2 QT_HAVE_SSE3 QT_HAVE_SSSE3 QT_HAVE_SSE4_1 QT_HAVE_SSE4_2)

target_compile_definitions(${target_name} PRIVATE QT_BUILD_CORE_LIB)

target_include_directories(${target_name} PUBLIC ${CMAKE_SOURCE_DIR}/include/QtCore)
target_include_directories(${target_name} PRIVATE ${CMAKE_SOURCE_DIR}/src/3rd)
target_include_directories(${target_name} PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/moc)

target_link_libraries(${target_name} PRIVATE Ws2_32)

target_link_libraries(${target_name} PRIVATE harfbuzz zlib)

install(TARGETS ${target_name} RUNTIME DESTINATION bin ARCHIVE DESTINATION lib LIBRARY DESTINATION lib )