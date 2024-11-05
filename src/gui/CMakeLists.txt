cmake_minimum_required(VERSION 3.26.0)

set(target_name QtGui)

file(GLOB widget_files widgets/*.cpp widgets/*.h)
source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${widget_files})

file(GLOB kernel_files kernel/*.cpp kernel/*.h)
source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${kernel_files})

file(GLOB style_files styles/*.cpp styles/*.h)
source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${style_files})

file(GLOB image_files image/*.cpp image/*.h)
source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${image_files})

file(GLOB paint_files painting/*.cpp painting/*.h painting/*.c)
source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${paint_files})

file(GLOB text_files text/*.cpp text/*.h)
source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${text_files})

file(GLOB itemview_files itemviews/*.cpp itemviews/*.h)
source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${itemview_files})

file(GLOB dialog_files dialogs/*.cpp dialogs/*.h)
source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${dialog_files})

file(GLOB math_files math3d/*.cpp math3d/*.h)
source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${math_files})

#file(MAKE_DIRECTORY 
#    ${CMAKE_CURRENT_BINARY_DIR}/moc/paint
#    ${CMAKE_CURRENT_BINARY_DIR}/moc/styles
#    ${CMAKE_CURRENT_BINARY_DIR}/moc/kernel
#    ${CMAKE_CURRENT_BINARY_DIR}/moc/widgets
#    ${CMAKE_CURRENT_BINARY_DIR}/moc/dialogs
#    ${CMAKE_CURRENT_BINARY_DIR}/moc/itemviews
#    ${CMAKE_CURRENT_BINARY_DIR}/moc/text
#)
#source_group("moc" ${CMAKE_CURRENT_SOURCE_DIR} FILES ${mocfiles})

set(ui_
  dialogs/qfiledialog.ui
)
qt4_wrap_ui(uifiles ${ui_})
source_group("ui" ${CMAKE_CURRENT_SOURCE_DIR} FILES ${uifiles})

set(CMAKE_AUTORCC ON)
set(rcc_files
  styles/qstyle.qrc
  dialogs/qmessagebox.qrc
)

set(CMAKE_AUTOMOC ON)

if(build_shared)
set(target_flag SHARED)
endif()

add_library(${target_name} ${target_flag} ${rcc_files} ${uifiles}
  ${kernel_files}
  ${style_files}
  ${image_files}
  ${widget_files}
  ${paint_files}
  ${text_files}
  ${itemview_files}
  ${dialog_files}
  ${math_files}
)

target_compile_definitions(${target_name} PRIVATE QT_BUILD_GUI_LIB)

target_include_directories(${target_name} PUBLIC ${CMAKE_SOURCE_DIR}/include/QtCore)
target_include_directories(${target_name} PUBLIC ${CMAKE_SOURCE_DIR}/include/QtGui)
target_include_directories(${target_name} PRIVATE ${CMAKE_SOURCE_DIR}/src/3rd)
target_include_directories(${target_name} PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/moc)
target_include_directories(${target_name} PRIVATE ${CMAKE_CURRENT_BINARY_DIR})

target_link_libraries(${target_name} QtCore libpng Ddraw DWrite)
