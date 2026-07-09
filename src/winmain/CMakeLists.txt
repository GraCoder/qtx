set(target_name qtmain)

set(CMAKE_AUTOMOC ON)

add_library(${target_name} STATIC qtmain_win.cpp)

target_compile_definitions(${target_name} PRIVATE QT_BUILD_CORE_LIB)

target_include_directories(${target_name} PUBLIC ${CMAKE_SOURCE_DIR}/include/QtCore)
target_include_directories(${target_name} PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/moc)

install(TARGETS ${target_name} RUNTIME DESTINATION bin ARCHIVE DESTINATION lib LIBRARY DESTINATION lib )
