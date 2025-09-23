cmake_minimum_required(VERSION 3.28)

set(target_name qtest)

set(source_files
	main.cpp
	MainDlg.h
	MainDlg.cpp

	WindowBar.h
	WindowBar.cpp
)

set(CMAKE_AUTOMOC ON)

add_executable(${target_name} ${source_files})

if(QT_SHARED)
target_compile_definitions(${target_name} PRIVATE QT_DLL)
endif()

target_include_directories(${target_name} PRIVATE ${CMAKE_SOURCE_DIR}/include)

target_link_libraries(${target_name} PRIVATE QtCore QtGui qtmain)

set_target_properties(${target_name} PROPERTIES FOLDER "test")
