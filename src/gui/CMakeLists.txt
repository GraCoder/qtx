set(target_name QtGui)

file(GLOB widget_files widgets/*.cpp widgets/*.h)
file(GLOB kernel_files kernel/*.cpp kernel/*.h)
file(GLOB style_files styles/*.cpp styles/*.h)
file(GLOB image_files image/*.cpp image/*.h)
file(GLOB paint_files painting/*.cpp painting/*.h painting/*.c)
file(GLOB text_files text/*.cpp text/*.h)
file(GLOB itemview_files itemviews/*.cpp itemviews/*.h)
file(GLOB dialog_files dialogs/*.cpp dialogs/*.h)
file(GLOB math_files math3d/*.cpp math3d/*.h)
file(GLOB util_files util/*.cpp util/*.h)

source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES 
  ${kernel_files}
  ${style_files}
  ${image_files}
  ${widget_files}
  ${paint_files}
  ${text_files}
  ${itemview_files}
  ${dialog_files}
  ${math_files}
  ${util_files}
)

#set(ui_
#  dialogs/qfiledialog.ui
#)
#qt4_wrap_ui(uifiles ${ui_})
#source_group("ui" ${CMAKE_CURRENT_SOURCE_DIR} FILES ${uifiles})

#set(CMAKE_AUTORCC ON)
#set(rcc_files
#  styles/qstyle.qrc
#  dialogs/qmessagebox.qrc
#)

#set(CMAKE_AUTOMOC ON)

add_library(${target_name} ${shared} ${target_flag} ${rcc_files} ${uifiles}
  ${kernel_files}
  ${style_files}
  ${image_files}
  ${widget_files}
  ${paint_files}
  ${text_files}
  ${itemview_files}
  ${dialog_files}
  ${math_files}
  ${util_files}
)

target_compile_definitions(${target_name} PRIVATE QT_BUILD_GUI_LIB)

target_include_directories(${target_name} PUBLIC ${CMAKE_SOURCE_DIR}/include/QtCore)
target_include_directories(${target_name} PUBLIC ${CMAKE_SOURCE_DIR}/include/QtGui)
target_include_directories(${target_name} PRIVATE ${CMAKE_SOURCE_DIR}/src/3rd)
target_include_directories(${target_name} PRIVATE ${CMAKE_CURRENT_BINARY_DIR})

target_link_libraries(${target_name} PUBLIC QtCore Imm32 dwrite)
#target_link_libraries(${target_name} PRIVATE libpng)
target_sources(${target_name} PRIVATE $<TARGET_OBJECTS:libpng>)
target_sources(${target_name} PRIVATE $<TARGET_OBJECTS:harfbuzz> $<TARGET_OBJECTS:zlib>)

install(TARGETS ${target_name} RUNTIME DESTINATION bin ARCHIVE DESTINATION lib LIBRARY DESTINATION lib )
