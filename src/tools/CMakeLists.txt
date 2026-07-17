set(target_name bootstrap)

set(src_dir ${CMAKE_SOURCE_DIR}/src)

set(common_sources
    ${src_dir}/corelib/codecs/qisciicodec.cpp
    ${src_dir}/corelib/codecs/qlatincodec.cpp
    ${src_dir}/corelib/codecs/qsimplecodec.cpp
    ${src_dir}/corelib/codecs/qtextcodec.cpp
    ${src_dir}/corelib/codecs/qtsciicodec.cpp
    ${src_dir}/corelib/codecs/qutfcodec.cpp
    ${src_dir}/corelib/global/qglobal.cpp
    ${src_dir}/corelib/global/qmalloc.cpp
    ${src_dir}/corelib/global/qnumeric.cpp
    ${src_dir}/corelib/global/qlibraryinfo.cpp
    ${src_dir}/corelib/io/qabstractfileengine.cpp
    ${src_dir}/corelib/io/qbuffer.cpp
    ${src_dir}/corelib/io/qdatastream.cpp
    ${src_dir}/corelib/io/qdir.cpp
    ${src_dir}/corelib/io/qdiriterator.cpp
    ${src_dir}/corelib/io/qfile.cpp
    ${src_dir}/corelib/io/qfileinfo.cpp
    ${src_dir}/corelib/io/qfilesystementry.cpp
    ${src_dir}/corelib/io/qfilesystemengine.cpp
    ${src_dir}/corelib/io/qfsfileengine.cpp
    ${src_dir}/corelib/io/qfsfileengine_iterator.cpp
    ${src_dir}/corelib/io/qiodevice.cpp
    ${src_dir}/corelib/io/qtemporaryfile.cpp
    ${src_dir}/corelib/io/qtextstream.cpp
    ${src_dir}/corelib/kernel/qmetatype.cpp
    ${src_dir}/corelib/kernel/qvariant.cpp
    ${src_dir}/corelib/kernel/qsystemerror.cpp
    ${src_dir}/corelib/tools/qbitarray.cpp
    ${src_dir}/corelib/tools/qbytearray.cpp
    ${src_dir}/corelib/tools/qbytearraymatcher.cpp
    ${src_dir}/corelib/tools/qdatetime.cpp
    ${src_dir}/corelib/tools/qhash.cpp
    ${src_dir}/corelib/tools/qlist.cpp
    ${src_dir}/corelib/tools/qlocale.cpp
    ${src_dir}/corelib/tools/qlocale_tools.cpp
    ${src_dir}/corelib/tools/qmap.cpp
    ${src_dir}/corelib/tools/qregexp.cpp
    ${src_dir}/corelib/tools/qstring.cpp
    ${src_dir}/corelib/tools/qstringlist.cpp
    ${src_dir}/corelib/tools/qvector.cpp
    ${src_dir}/corelib/tools/qvsnprintf.cpp
    ${src_dir}/corelib/xml/qxmlutils.cpp
    ${src_dir}/corelib/xml/qxmlstream.cpp
    #${src_dir}/xml/dom/qdom.cpp
    #${src_dir}/xml/sax/qxml.cpp
)

add_library(${target_name} STATIC ${common_sources})

if(UNIX)
    target_sources(${target_name} PRIVATE
        ${src_dir}/corelib/io/qfilesystemengine_unix.cpp
        ${src_dir}/corelib/io/qfilesystemiterator_unix.cpp
        ${src_dir}/corelib/io/qfsfileengine_unix.cpp
    )
endif()

if(WIN32)
    target_sources(${target_name} PRIVATE
        ${src_dir}/corelib/io/qfilesystemengine_win.cpp
        ${src_dir}/corelib/io/qfilesystemiterator_win.cpp
        ${src_dir}/corelib/io/qfsfileengine_win.cpp
        ${src_dir}/corelib/plugin/qsystemlibrary.cpp
    )
endif()

if(APPLE)
    target_sources(${target_name} PRIVATE
        ${src_dir}/corelib/tools/qlocale_mac.mm
        ${src_dir}/corelib/kernel/qcore_mac.cpp
    )
    set_source_files_properties(${src_dir}/corelib/tools/qlocale_mac.mm PROPERTIES LANGUAGE OBJCXX)
    target_link_libraries(${target_name} PRIVATE
        "-framework CoreServices"
        "-framework ApplicationServices"
    )
elseif(WIN32)
    target_sources(${target_name} PRIVATE ${src_dir}/corelib/tools/qlocale_win.cpp)
elseif(UNIX)
    target_sources(${target_name} PRIVATE ${src_dir}/corelib/tools/qlocale_unix.cpp)
endif()

target_compile_definitions(${target_name} PRIVATE
    QT_BOOTSTRAPPED
    QT_LITE_UNICODE
    QT_NO_CODECS
    QT_NO_DATASTREAM
    QT_NO_GEOM_VARIANT
    QT_NO_LIBRARY
    QT_NO_QOBJECT
    QT_NO_STL
    QT_NO_SYSTEMLOCALE
    QT_NO_TEXTSTREAM
    QT_NO_THREAD
    QT_NO_UNICODETABLES
    QT_NO_USING_NAMESPACE
    QT_NO_DEPRECATED
)

if(WIN32)
    target_compile_definitions(${target_name} PRIVATE QT_NODLL)
endif()

target_include_directories(${target_name} PRIVATE
    ${CMAKE_SOURCE_DIR}/include/QtCore
)

target_compile_definitions(${target_name} PRIVATE 
  QT_TEXTCODEC
  QT_NO_TEXTCODEC
)
target_link_libraries(${target_name} PRIVATE zlib)

set_target_properties(${target_name} PROPERTIES FOLDER "tools")

add_subdirectory(moc)
add_subdirectory(uic)
add_subdirectory(rcc)
