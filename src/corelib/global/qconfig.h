/* Everything */


/* License information */
#define QT_PRODUCT_LICENSEE "Open Source"
#define QT_PRODUCT_LICENSE "OpenSource"

// Qt Edition
#ifndef QT_EDITION
#  define QT_EDITION QT_EDITION_OPENSOURCE
#endif

#if defined(__SYMBIAN32__)
# define QT_BUILD_KEY "Symbian full-config"
#else
# if !defined(QT_NO_DEBUG)
#  if (defined(WIN64) || defined(_WIN64) || defined(__WIN64__))
#   define QT_BUILD_KEY "Windows x64 msvc debug full-config"
#  else
#   define QT_BUILD_KEY "Windows msvc debug full-config"
#  endif
# else
#  if (defined(WIN64) || defined(_WIN64) || defined(__WIN64__))
#   define QT_BUILD_KEY "Windows x64 msvc release full-config"
#  else
#   define QT_BUILD_KEY "Windows msvc release full-config"
#  endif
# endif
#endif

/* Machine byte-order */
#define Q_BIG_ENDIAN 4321
#define Q_LITTLE_ENDIAN 1234
#define Q_BYTE_ORDER Q_LITTLE_ENDIAN

// Compile time features
#define QT_ARCH_WINDOWS
#define QT_LARGEFILE_SUPPORT 64
#if defined(QT_GRAPHICSSYSTEM_RASTER) && defined(QT_NO_GRAPHICSSYSTEM_RASTER)
# undef QT_GRAPHICSSYSTEM_RASTER
#elif !defined(QT_GRAPHICSSYSTEM_RASTER)
# define QT_GRAPHICSSYSTEM_RASTER
#endif

#if defined(QT_NO_ACCESSIBILITY) && defined(QT_ACCESSIBILITY)
# undef QT_NO_ACCESSIBILITY
#elif !defined(QT_NO_ACCESSIBILITY)
# define QT_NO_ACCESSIBILITY
#endif

#if defined(QT_NO_DBUS) && defined(QT_DBUS)
# undef QT_NO_DBUS
#elif !defined(QT_NO_DBUS)
# define QT_NO_DBUS
#endif

#if defined(QT_NO_DECLARATIVE) && defined(QT_DECLARATIVE)
# undef QT_NO_DECLARATIVE
#elif !defined(QT_NO_DECLARATIVE)
# define QT_NO_DECLARATIVE
#endif

#if defined(QT_NO_EXCEPTIONS) && defined(QT_EXCEPTIONS)
# undef QT_NO_EXCEPTIONS
#elif !defined(QT_NO_EXCEPTIONS)
# define QT_NO_EXCEPTIONS
#endif

#if defined(QT_NO_FONTCONFIG) && defined(QT_FONTCONFIG)
# undef QT_NO_FONTCONFIG
#elif !defined(QT_NO_FONTCONFIG)
# define QT_NO_FONTCONFIG
#endif

#if defined(QT_NO_IMAGEFORMAT_TIFF) && defined(QT_IMAGEFORMAT_TIFF)
# undef QT_NO_IMAGEFORMAT_TIFF
#elif !defined(QT_NO_IMAGEFORMAT_TIFF)
# define QT_NO_IMAGEFORMAT_TIFF
#endif

#if defined(QT_NO_MULTIMEDIA) && defined(QT_MULTIMEDIA)
# undef QT_NO_MULTIMEDIA
#elif !defined(QT_NO_MULTIMEDIA)
# define QT_NO_MULTIMEDIA
#endif

#if defined(QT_NO_NIS) && defined(QT_NIS)
# undef QT_NO_NIS
#elif !defined(QT_NO_NIS)
# define QT_NO_NIS
#endif

#if defined(QT_NO_OPENGL) && defined(QT_OPENGL)
# undef QT_NO_OPENGL
#elif !defined(QT_NO_OPENGL)
# define QT_NO_OPENGL
#endif

#if defined(QT_NO_OPENSSL) && defined(QT_OPENSSL)
# undef QT_NO_OPENSSL
#elif !defined(QT_NO_OPENSSL)
# define QT_NO_OPENSSL
#endif

#if defined(QT_NO_OPENVG) && defined(QT_OPENVG)
# undef QT_NO_OPENVG
#elif !defined(QT_NO_OPENVG)
# define QT_NO_OPENVG
#endif

#if defined(QT_NO_PHONON) && defined(QT_PHONON)
# undef QT_NO_PHONON
#elif !defined(QT_NO_PHONON)
# define QT_NO_PHONON
#endif

#if defined(QT_NO_SCRIPT) && defined(QT_SCRIPT)
# undef QT_NO_SCRIPT
#elif !defined(QT_NO_SCRIPT)
# define QT_NO_SCRIPT
#endif

#if defined(QT_NO_SCRIPTTOOLS) && defined(QT_SCRIPTTOOLS)
# undef QT_NO_SCRIPTTOOLS
#elif !defined(QT_NO_SCRIPTTOOLS)
# define QT_NO_SCRIPTTOOLS
#endif

#if defined(QT_NO_STL) && defined(QT_STL)
# undef QT_NO_STL
#elif !defined(QT_NO_STL)
# define QT_NO_STL
#endif

#if defined(QT_NO_STYLE_GTK) && defined(QT_STYLE_GTK)
# undef QT_NO_STYLE_GTK
#elif !defined(QT_NO_STYLE_GTK)
# define QT_NO_STYLE_GTK
#endif

#if defined(QT_NO_STYLE_S60) && defined(QT_STYLE_S60)
# undef QT_NO_STYLE_S60
#elif !defined(QT_NO_STYLE_S60)
# define QT_NO_STYLE_S60
#endif

#if defined(QT_NO_STYLE_WINDOWSCE) && defined(QT_STYLE_WINDOWSCE)
# undef QT_NO_STYLE_WINDOWSCE
#elif !defined(QT_NO_STYLE_WINDOWSCE)
# define QT_NO_STYLE_WINDOWSCE
#endif

#if defined(QT_NO_STYLE_WINDOWSMOBILE) && defined(QT_STYLE_WINDOWSMOBILE)
# undef QT_NO_STYLE_WINDOWSMOBILE
#elif !defined(QT_NO_STYLE_WINDOWSMOBILE)
# define QT_NO_STYLE_WINDOWSMOBILE
#endif

#if defined(QT_NO_WEBKIT) && defined(QT_WEBKIT)
# undef QT_NO_WEBKIT
#elif !defined(QT_NO_WEBKIT)
# define QT_NO_WEBKIT
#endif

#if defined(QT_NO_XMLPATTERNS) && defined(QT_XMLPATTERNS)
# undef QT_NO_XMLPATTERNS
#elif !defined(QT_NO_XMLPATTERNS)
# define QT_NO_XMLPATTERNS
#endif

#if defined(QT_MAINWINDOW) && defined(QT_NO_MAINWINDOW)
# undef QT_NO_MAINWINDOW
#elif !defined(QT_NO_MAINWINDOW)
# define QT_NO_MAINWINDOW
#endif

#if defined(QT_DIRECTDRAW) && defined(QT_NO_DIRECTDRAW)
# undef QT_NO_DIRECTDRAW
#elif !defined(QT_NO_DIRECTDRAW)
# define QT_NO_DIRECTDRAW
#endif

#if defined(QT_FONTDIALOG) && defined(QT_NO_FONTDIALOG)
# undef QT_NO_FONTDIALOG
#elif !defined(QT_NO_FONTDIALOG)
# define QT_NO_FONTDIALOG
#endif

#if defined(QT_FONTCOMBOBOX) && defined(QT_NO_FONTCOMBOBOX)
# undef QT_NO_FONTCOMBOBOX
#elif !defined(QT_NO_FONTCOMBOBOX)
# define QT_NO_FONTCOMBOBOX
#endif

#if defined(QT_GRAPHICSVIEW) && defined(QT_NO_GRAPHICSVIEW)
# undef QT_NO_GRAPHICSVIEW
#elif !defined(QT_NO_GRAPHICSVIEW)
# define QT_NO_GRAPHICSVIEW
#endif

#if defined(QT_DEBUG_STREAM) && defined(QT_NO_DEBUG_STREAM)
# undef QT_NO_DEBUG_STREAM
#elif !defined(QT_NO_DEBUG_STREAM)
# define QT_NO_DEBUG_STREAM
#endif

#if defined(QT_WARNING_OUTPUT) && defined(QT_NO_WARNING_OUTPUT)
# undef QT_NO_WARNING_OUTPUT
#elif !defined(QT_NO_WARNING_OUTPUT)
# define QT_NO_WARNING_OUTPUT
#endif

#if defined(QT_REGEXP) && defined(QT_NO_REGEXP)
# undef QT_NO_REGEXP
#elif !defined(QT_NO_REGEXP)
# define QT_NO_REGEXP
#endif

#if defined(QT_SYSTEMLOCALE) && defined(QT_NO_SYSTEMLOCALE)
# undef QT_NO_SYSTEMLOCALE
#elif !defined(QT_NO_SYSTEMLOCALE)
# define QT_NO_SYSTEMLOCALE
#endif

#if defined(QT_COMPLETER) && defined(QT_NO_COMPLETER)
# undef QT_NO_COMPLETER
#elif !defined(QT_NO_COMPLETER)
# define QT_NO_COMPLETER
#endif

#if defined(QT_RAWFONT) && defined(QT_NO_RAWFONT)
# undef QT_NO_RAWFONT
#elif !defined(QT_NO_RAWFONT)
# define QT_NO_RAWFONT
#endif

#if defined(QT_PRINTER) && defined(QT_NO_PRINTER)
# undef QT_NO_PRINTER
#elif !defined(QT_NO_PRINTER)
# define QT_NO_PRINTER
#endif

#if defined(QT_WIZARD) && defined(QT_NO_WIZARD)
# undef QT_NO_WIZARD
#elif !defined(QT_NO_WIZARD)
# define QT_NO_WIZARD
#endif

#if defined(QT_WHATSTHIS) && defined(QT_NO_WHATSTHIS)
# undef QT_NO_WHATSTHIS
#elif !defined(QT_NO_WHATSTHIS)
# define QT_NO_WHATSTHIS
#endif

#if defined(QT_STATUSTIP) && defined(QT_NO_STATUSTIP)
# undef QT_NO_STATUSTIP
#elif !defined(QT_NO_STATUSTIP)
# define QT_NO_STATUSTIP
#endif

#if defined(QT_PRINTDIALOG) && defined(QT_NO_PRINTDIALOG)
# undef QT_NO_PRINTDIALOG
#elif !defined(QT_NO_PRINTDIALOG)
# define QT_NO_PRINTDIALOG
#endif

#if defined(QT_SORTFILTERPROXYMODEL) && defined(QT_NO_SORTFILTERPROXYMODEL)
# undef QT_NO_SORTFILTERPROXYMODEL
#elif !defined(QT_NO_SORTFILTERPROXYMODEL)
# define QT_NO_SORTFILTERPROXYMODEL
#endif

#if defined(QT_MATRIX4X4) && defined(QT_NO_MATRIX4X4)
# undef QT_NO_MATRIX4X4
#elif !defined(QT_NO_MATRIX4X4)
# define QT_NO_MATRIX4X4
#endif

#if defined(QT_VECTOR2D) && defined(QT_NO_VECTOR2D)
# undef QT_NO_VECTOR2D
#elif !defined(QT_NO_VECTOR2D)
# define QT_NO_VECTOR2D
#endif

#if defined(QT_VECTOR3D) && defined(QT_NO_VECTOR3D)
# undef QT_NO_VECTOR3D
#elif !defined(QT_NO_VECTOR3D)
# define QT_NO_VECTOR3D
#endif

#if defined(QT_VECTOR4D) && defined(QT_NO_VECTOR4D)
# undef QT_NO_VECTOR4D
#elif !defined(QT_NO_VECTOR4D)
# define QT_NO_VECTOR4D
#endif

#if defined(QT_QUATERNION) && defined(QT_NO_QUATERNION)
# undef QT_NO_QUATERNION
#elif !defined(QT_NO_QUATERNION)
# define QT_NO_QUATERNION
#endif

#if defined(QT_BIG_CODECS) && defined(QT_NO_BIG_CODECS)
# undef QT_NO_BIG_CODECS
#elif !defined(QT_NO_BIG_CODECS)
# define QT_NO_BIG_CODECS
#endif

#if defined(QT_CONCURRENT) && defined(QT_NO_CONCURRENT)
# undef QT_NO_CONCURRENT
#elif !defined(QT_NO_CONCURRENT)
# define QT_NO_CONCURRENT
#endif

#if defined(QT_DESKTOPSERVICES) && defined(QT_NO_DESKTOPSERVICES)
# undef QT_NO_DESKTOPSERVICES
#elif !defined(QT_NO_DESKTOPSERVICES)
# define QT_NO_DESKTOPSERVICES
#endif

//#if defined(QT_DOM) && defined(QT_NO_DOM)
//# undef QT_NO_DOM
//#elif !defined(QT_NO_DOM)
//# define QT_NO_DOM
//#endif

#if defined(QT_FREETYPE) && defined(QT_NO_FREETYPE)
# undef QT_NO_FREETYPE
#elif !defined(QT_NO_FREETYPE)
# define QT_NO_FREETYPE
#endif

#if defined(QT_GESTURES) && defined(QT_NO_GESTURES)
# undef QT_NO_GESTURES
#elif !defined(QT_NO_GESTURES)
# define QT_NO_GESTURES
#endif

#if defined(QT_IMAGEFORMAT_BMP) && defined(QT_NO_IMAGEFORMAT_BMP)
# undef QT_NO_IMAGEFORMAT_BMP
#elif !defined(QT_NO_IMAGEFORMAT_BMP)
# define QT_NO_IMAGEFORMAT_BMP
#endif

#if defined(QT_IMAGEFORMAT_PPM) && defined(QT_NO_IMAGEFORMAT_PPM)
# undef QT_NO_IMAGEFORMAT_PPM
#elif !defined(QT_NO_IMAGEFORMAT_PPM)
# define QT_NO_IMAGEFORMAT_PPM
#endif

#if defined(QT_IMAGEFORMAT_XBM) && defined(QT_NO_IMAGEFORMAT_XBM)
# undef QT_NO_IMAGEFORMAT_XBM
#elif !defined(QT_NO_IMAGEFORMAT_XBM)
# define QT_NO_IMAGEFORMAT_XBM
#endif

#if defined(QT_IMAGEFORMAT_MNG) && defined(QT_NO_IMAGEFORMAT_MNG)
# undef QT_NO_IMAGEFORMAT_MNG
#elif !defined(QT_NO_IMAGEFORMAT_MNG)
# define QT_NO_IMAGEFORMAT_MNG
#endif

#if defined(QT_IMAGEFORMAT_XPM) && defined(QT_NO_IMAGEFORMAT_XPM)
# undef QT_NO_IMAGEFORMAT_XPM
#elif !defined(QT_NO_IMAGEFORMAT_XPM)
# define QT_NO_IMAGEFORMAT_XPM
#endif

#if defined(QT_LCDNUMBER) && defined(QT_NO_LCDNUMBER)
# undef QT_NO_LCDNUMBER
#elif !defined(QT_NO_LCDNUMBER)
# define QT_NO_LCDNUMBER
#endif

#if defined(QT_MOVIE) && defined(QT_NO_MOVIE)
# undef QT_NO_MOVIE
#elif !defined(QT_NO_MOVIE)
# define QT_NO_MOVIE
#endif

#if defined(QT_NETWORKINTERFACE) && defined(QT_NO_NETWORKINTERFACE)
# undef QT_NO_NETWORKINTERFACE
#elif !defined(QT_NO_NETWORKINTERFACE)
# define QT_NO_NETWORKINTERFACE
#endif

#if defined(QT_NETWORKPROXY) && defined(QT_NO_NETWORKPROXY)
# undef QT_NO_NETWORKPROXY
#elif !defined(QT_NO_NETWORKPROXY)
# define QT_NO_NETWORKPROXY
#endif

#if defined(QT_PHONON_MEDIACONTROLLER) && defined(QT_NO_PHONON_MEDIACONTROLLER)
# undef QT_NO_PHONON_MEDIACONTROLLER
#elif !defined(QT_NO_PHONON_MEDIACONTROLLER)
# define QT_NO_PHONON_MEDIACONTROLLER
#endif

#if defined(QT_PHONON_VIDEO) && defined(QT_NO_PHONON_VIDEO)
# undef QT_NO_PHONON_VIDEO
#elif !defined(QT_NO_PHONON_VIDEO)
# define QT_NO_PHONON_VIDEO
#endif

#if defined(QT_QWSEMBEDWIDGET) && defined(QT_NO_QWSEMBEDWIDGET)
# undef QT_NO_QWSEMBEDWIDGET
#elif !defined(QT_NO_QWSEMBEDWIDGET)
# define QT_NO_QWSEMBEDWIDGET
#endif

#if defined(QT_QWS_KEYBOARD) && defined(QT_NO_QWS_KEYBOARD)
# undef QT_NO_QWS_KEYBOARD
#elif !defined(QT_NO_QWS_KEYBOARD)
# define QT_NO_QWS_KEYBOARD
#endif

#if defined(QT_QWS_MOUSE) && defined(QT_NO_QWS_MOUSE)
# undef QT_NO_QWS_MOUSE
#elif !defined(QT_NO_QWS_MOUSE)
# define QT_NO_QWS_MOUSE
#endif

#if defined(QT_QWS_MOUSE_AUTO) && defined(QT_NO_QWS_MOUSE_AUTO)
# undef QT_NO_QWS_MOUSE_AUTO
#elif !defined(QT_NO_QWS_MOUSE_AUTO)
# define QT_NO_QWS_MOUSE_AUTO
#endif

#if defined(QT_QWS_MOUSE_MANUAL) && defined(QT_NO_QWS_MOUSE_MANUAL)
# undef QT_NO_QWS_MOUSE_MANUAL
#elif !defined(QT_NO_QWS_MOUSE_MANUAL)
# define QT_NO_QWS_MOUSE_MANUAL
#endif

#if defined(QT_QWS_MULTIPROCESS) && defined(QT_NO_QWS_MULTIPROCESS)
# undef QT_NO_QWS_MULTIPROCESS
#elif !defined(QT_NO_QWS_MULTIPROCESS)
# define QT_NO_QWS_MULTIPROCESS
#endif

#if defined(QT_QWS_PROXYSCREEN) && defined(QT_NO_QWS_PROXYSCREEN)
# undef QT_NO_QWS_PROXYSCREEN
#elif !defined(QT_NO_QWS_PROXYSCREEN)
# define QT_NO_QWS_PROXYSCREEN
#endif

#if defined(QT_QWS_QPF) && defined(QT_NO_QWS_QPF)
# undef QT_NO_QWS_QPF
#elif !defined(QT_NO_QWS_QPF)
# define QT_NO_QWS_QPF
#endif

#if defined(QT_QWS_QPF2) && defined(QT_NO_QWS_QPF2)
# undef QT_NO_QWS_QPF2
#elif !defined(QT_NO_QWS_QPF2)
# define QT_NO_QWS_QPF2
#endif

#if defined(QT_SETTINGS) && defined(QT_NO_SETTINGS)
# undef QT_NO_SETTINGS
#elif !defined(QT_NO_SETTINGS)
# define QT_NO_SETTINGS
#endif

#if defined(QT_SHAREDMEMORY) && defined(QT_NO_SHAREDMEMORY)
# undef QT_NO_SHAREDMEMORY
#elif !defined(QT_NO_SHAREDMEMORY)
# define QT_NO_SHAREDMEMORY
#endif

#if defined(QT_SHORTCUT) && defined(QT_NO_SHORTCUT)
# undef QT_NO_SHORTCUT
#elif !defined(QT_NO_SHORTCUT)
# define QT_NO_SHORTCUT
#endif

#if defined(QT_SOUND) && defined(QT_NO_SOUND)
# undef QT_NO_SOUND
#elif !defined(QT_NO_SOUND)
# define QT_NO_SOUND
#endif

#if defined(QT_SPLASHSCREEN) && defined(QT_NO_SPLASHSCREEN)
# undef QT_NO_SPLASHSCREEN
#elif !defined(QT_NO_SPLASHSCREEN)
# define QT_NO_SPLASHSCREEN
#endif

#if defined(QT_STL) && defined(QT_NO_STL)
# undef QT_NO_STL
#elif !defined(QT_NO_STL)
# define QT_NO_STL
#endif

#if defined(QT_STYLE_MOTIF) && defined(QT_NO_STYLE_MOTIF)
# undef QT_NO_STYLE_MOTIF
#elif !defined(QT_NO_STYLE_MOTIF)
# define QT_NO_STYLE_MOTIF
#endif

#if defined(QT_SYSTEMSEMAPHORE) && defined(QT_NO_SYSTEMSEMAPHORE)
# undef QT_NO_SYSTEMSEMAPHORE
#elif !defined(QT_NO_SYSTEMSEMAPHORE)
# define QT_NO_SYSTEMSEMAPHORE
#endif

#if defined(QT_TABLETEVENT) && defined(QT_NO_TABLETEVENT)
# undef QT_NO_TABLETEVENT
#elif !defined(QT_NO_TABLETEVENT)
# define QT_NO_TABLETEVENT
#endif

#if defined(QT_TEXTCODEC) && defined(QT_NO_TEXTCODEC)
# undef QT_NO_TEXTCODEC
#elif !defined(QT_NO_TEXTCODEC)
# define QT_NO_TEXTCODEC
#endif

#if defined(QT_TOOLTIP) && defined(QT_NO_TOOLTIP)
# undef QT_NO_TOOLTIP
#elif !defined(QT_NO_TOOLTIP)
# define QT_NO_TOOLTIP
#endif

#if defined(QT_TRANSLATION) && defined(QT_NO_TRANSLATION)
# undef QT_NO_TRANSLATION
#elif !defined(QT_NO_TRANSLATION)
# define QT_NO_TRANSLATION
#endif

#if defined(QT_UNDOCOMMAND) && defined(QT_NO_UNDOCOMMAND)
# undef QT_NO_UNDOCOMMAND
#elif !defined(QT_NO_UNDOCOMMAND)
# define QT_NO_UNDOCOMMAND
#endif

#if defined(QT_ANIMATION) && defined(QT_NO_ANIMATION)
# undef QT_NO_ANIMATION
#elif !defined(QT_NO_ANIMATION)
# define QT_NO_ANIMATION
#endif
