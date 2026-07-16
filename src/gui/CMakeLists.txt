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

set(gen_dir ${CMAKE_CURRENT_BINARY_DIR}/QtGui.gen/$<CONFIG>)

set(moc_def
  -DQT_NO_GESTURES
  -DQT_NO_TOOLTIP
  -DQT_NO_DRAGANDDROP
  -DQT_NO_SHORTCUT
  -DQT_NO_TOOLTIP
  -DQT_NO_TRANSLATION
  -DQT_NO_STATUSTIP
  -DQT_NO_WHATSTHIS
  -DQT_NO_ACCESSIBILITY
  -DQT_NO_COMPLETER
  -DQT_NO_MOVIE
  -DQT_NO_ANIMATION
  -DQT_NO_STYLE_STYLESHEET
)

set(moc_files
  kernel/qsessionmanager.h
  kernel/qclipboard.h
  kernel/qdnd_p.h
  kernel/qdesktopwidget.h
  kernel/qkeymapper_p.h
  kernel/qguiplatformplugin_p.h
  kernel/qlayout.h
  kernel/qboxlayout.h
  kernel/qgridlayout.h
  kernel/qformlayout.h
  kernel/qstackedlayout.h
  
  widgets/qframe.h
  widgets/qabstractbutton.h
  widgets/qbuttongroup.h
  widgets/qabstractslider.h
  widgets/qscrollbar.h
  widgets/qspinbox.h
  widgets/qvalidator.h
  widgets/qprogressbar.h
  widgets/qrubberband.h
  widgets/qsplitter.h
  widgets/qstackedwidget.h
  widgets/qcheckbox.h
  widgets/qradiobutton.h
  widgets/qslider.h
  widgets/qcommandlinkbutton.h
  widgets/qcalendartextnavigator_p.h
  widgets/qdatetimeedit_p.h
  widgets/qcombobox_p.h
  widgets/qlinecontrol_p.h
  widgets/qtabbar_p.h
  
  itemviews/qabstractitemdelegate.h
  itemviews/qlistview.h
  itemviews/qitemeditorfactory_p.h
  
  dialogs/qfileinfogatherer_p.h
  dialogs/qsidebar_p.h
  
  styles/qstyle.h
  styles/qcommonstyle.h
  styles/qwindowsstyle.h
  styles/qwindowsvistastyle.h
  styles/qwindowsvistastyle_p.h
  styles/qwindowsxpstyle.h
  styles/qwindowsxpstyle_p.h
  
  text/qfont_p.h
  text/qfontenginedirectwrite_p.h
  text/qtextdocument.h
  text/qtextobject.h
  text/qtexttable.h
  text/qtextimagehandler_p.h
  text/qtextlist.h
  
  image/qimageiohandler.h
  image/qiconengineplugin.h
)
foreach(moc_file ${moc_files})
  get_filename_component(file_name ${moc_file} NAME_WE)
  set(output_file ${gen_dir}/moc_${file_name}.cpp)
  add_custom_command(
      OUTPUT ${output_file}
      COMMAND ${moc_exe} -I${CMAKE_SOURCE_DIR}/include ${moc_def} -o ${output_file} ${CMAKE_CURRENT_SOURCE_DIR}/${moc_file}
      DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/${moc_file}
      VERBATIM
  )
  list(APPEND gens ${output_file})
endforeach()

set(rcc_files
  styles/qstyle.qrc
  dialogs/qmessagebox.qrc
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

add_library(${target_name} ${gens}
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

set(gens)
add_custom_command(TARGET ${target_name} PRE_BUILD COMMAND ${CMAKE_COMMAND} -E make_directory ${gen_dir})

set(moc_files
  dialogs/qdialog.h
  dialogs/qcolordialog.h
  dialogs/qframeless.h
  dialogs/qinputdialog.h
  dialogs/qfilesystemmodel.h
  dialogs/qmessagebox.h
  dialogs/qprogressdialog.h
  itemviews/qabstractitemview.h
  itemviews/qabstractproxymodel.h
  itemviews/qcolumnview.h
  itemviews/qdatawidgetmapper.h
  itemviews/qdirmodel.h
  itemviews/qheaderview.h
  itemviews/qidentityproxymodel.h
  itemviews/qitemdelegate.h
  itemviews/qitemselectionmodel.h
  itemviews/qlistwidget.h
  itemviews/qproxymodel.h
  itemviews/qstandarditemmodel.h
  itemviews/qstyleditemdelegate.h
  itemviews/qtableview.h
  itemviews/qtablewidget.h
  itemviews/qtreeview.h
  itemviews/qtreewidget.h
  kernel/qaction.h
  kernel/qactiongroup.h
  kernel/qapplication.h
  kernel/qwidget.h
  kernel/qwidgetaction.h
  #kernel/qgraphicssystem_runtime.h
  styles/qstylesheetstyle_p.h
  text/qabstracttextdocumentlayout.h
  text/qsyntaxhighlighter.h
  text/qtextcontrol_p.h
  text/qtextdocumentlayout_p.h
  widgets/qabstractscrollarea.h
  widgets/qabstractscrollarea_p.h
  widgets/qabstractspinbox.h
  widgets/qcalendarwidget.h
  widgets/qcombobox.h
  widgets/qdatetimeedit.h
  widgets/qdialogbuttonbox.h
  widgets/qgroupbox.h
  widgets/qlabel.h
  widgets/qlineedit.h
  widgets/qmdiarea.h
  widgets/qmdisubwindow.h
  widgets/qmenu.h
  widgets/qmenubar.h
  widgets/qplaintextedit.h
  widgets/qplaintextedit_p.h
  widgets/qpushbutton.h
  widgets/qsizegrip.h
  widgets/qtabbar.h
  widgets/qtabwidget.h
  widgets/qtextbrowser.h
  widgets/qtextedit.h
  widgets/qtoolbox.h
  widgets/qtoolbutton.h
  dialogs/qfiledialog.h
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
  dialogs/qcolordialog.cpp
  dialogs/qinputdialog.cpp
  itemviews/qlistwidget.cpp
  itemviews/qitemeditorfactory.cpp
  itemviews/qtableview.cpp
  image/qpixmapcache.cpp
  widgets/qcalendarwidget.cpp
  widgets/qeffects.cpp
  widgets/qmenu.cpp
  widgets/qtoolbox.cpp
  widgets/qmdisubwindow.cpp
  painting/qgraphicssystem_runtime.cpp
  styles/qstylesheetstyle.cpp
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

set(ui_file ${gen_dir}/ui_qfiledialog.h)
add_custom_command(
    OUTPUT ${ui_file}
    COMMAND ${uic_exe} -o ${ui_file} ${CMAKE_CURRENT_SOURCE_DIR}/dialogs/qfiledialog.ui
    DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/dialogs/qfiledialog.ui
    VERBATIM
)

add_custom_target(QtGui.gen DEPENDS ${gens} ${ui_file})
set_target_properties(QtGui.gen PROPERTIES FOLDER "gen")
add_dependencies(${target_name} QtGui.gen)

target_compile_definitions(${target_name} PRIVATE QT_BUILD_GUI_LIB)

target_include_directories(${target_name} PUBLIC ${CMAKE_SOURCE_DIR}/include/QtCore)
target_include_directories(${target_name} PUBLIC ${CMAKE_SOURCE_DIR}/include/QtGui)
target_include_directories(${target_name} PRIVATE ${gen_dir})
target_include_directories(${target_name} PRIVATE ${CMAKE_SOURCE_DIR}/src/3rd)
target_include_directories(${target_name} PRIVATE ${CMAKE_CURRENT_BINARY_DIR})

target_link_libraries(${target_name} PUBLIC QtCore Imm32 dwrite)
#target_link_libraries(${target_name} PRIVATE libpng)
target_sources(${target_name} PRIVATE $<TARGET_OBJECTS:libpng>)
target_sources(${target_name} PRIVATE $<TARGET_OBJECTS:harfbuzz> $<TARGET_OBJECTS:zlib>)

install(TARGETS ${target_name} RUNTIME DESTINATION bin ARCHIVE DESTINATION lib LIBRARY DESTINATION lib )
