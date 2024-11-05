cmake_minimum_required(VERSION 3.24.0)

set(target_name test)

set(source_files
	main.cpp
	MainDlg.h
	MainDlg.cpp
)

add_executable(${target_name} ${source_files})

target_include_directories(${target_name} PRIVATE ${CMAKE_SOURCE_DIR}/include)

target_link_libraries(${target_name} PRIVATE QtCore QtGui)
