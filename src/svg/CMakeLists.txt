cmake_minimum_required(VERSION 3.28)

set(target_name QtSvg)

file(GLOB source_files *.cpp *.h)
source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${source_files})

set(CMAKE_AUTOMOC ON)


add_library(${target_name} STATIC ${source_files})

target_compile_definitions(${target_name} PRIVATE QT_BUILD_CORE_LIB)

target_include_directories(${target_name} PUBLIC ${CMAKE_SOURCE_DIR}/include/QtCore)
target_include_directories(${target_name} PUBLIC ${CMAKE_SOURCE_DIR}/include/QtGui)
target_include_directories(${target_name} PUBLIC ${CMAKE_SOURCE_DIR}/include/QtSvg)

target_include_directories(${target_name} PRIVATE ${CMAKE_SOURCE_DIR}/src/3rd)
target_include_directories(${target_name} PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/moc)

install(TARGETS ${target_name} RUNTIME DESTINATION bin ARCHIVE DESTINATION lib LIBRARY DESTINATION lib )