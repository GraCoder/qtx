install(
    FILES
        "${PROJECT_SOURCE_DIR}/include/QtGui/QtGui"
    DESTINATION include/QtGui
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/accessible/qaccessible.h"
        "${CMAKE_CURRENT_LIST_DIR}/accessible/qaccessible2.h"
        "${CMAKE_CURRENT_LIST_DIR}/accessible/qaccessiblebridge.h"
        "${CMAKE_CURRENT_LIST_DIR}/accessible/qaccessibleobject.h"
        "${CMAKE_CURRENT_LIST_DIR}/accessible/qaccessibleplugin.h"
        "${CMAKE_CURRENT_LIST_DIR}/accessible/qaccessiblewidget.h"
    DESTINATION include/QtGui
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAccessible"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAccessible2Interface"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAccessibleActionInterface"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAccessibleApplication"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAccessibleBridge"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAccessibleBridgeFactoryInterface"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAccessibleBridgePlugin"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAccessibleEditableTextInterface"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAccessibleEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAccessibleFactoryInterface"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAccessibleImageInterface"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAccessibleInterface"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAccessibleInterfaceEx"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAccessibleObject"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAccessibleObjectEx"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAccessiblePlugin"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAccessibleSimpleEditableTextInterface"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAccessibleTable2CellInterface"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAccessibleTable2Interface"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAccessibleTableInterface"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAccessibleTextInterface"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAccessibleValueInterface"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAccessibleWidget"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAccessibleWidgetEx"
    DESTINATION include/QtGui
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/accessible/qaccessible.h"
        "${CMAKE_CURRENT_LIST_DIR}/accessible/qaccessible2.h"
        "${CMAKE_CURRENT_LIST_DIR}/accessible/qaccessiblebridge.h"
        "${CMAKE_CURRENT_LIST_DIR}/accessible/qaccessibleobject.h"
        "${CMAKE_CURRENT_LIST_DIR}/accessible/qaccessibleplugin.h"
        "${CMAKE_CURRENT_LIST_DIR}/accessible/qaccessiblewidget.h"
    DESTINATION include/Qt
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/dialogs/qabstractpagesetupdialog.h"
        "${CMAKE_CURRENT_LIST_DIR}/dialogs/qabstractprintdialog.h"
        "${CMAKE_CURRENT_LIST_DIR}/dialogs/qcolordialog.h"
        "${CMAKE_CURRENT_LIST_DIR}/dialogs/qdialog.h"
        "${CMAKE_CURRENT_LIST_DIR}/dialogs/qerrormessage.h"
        "${CMAKE_CURRENT_LIST_DIR}/dialogs/qfiledialog.h"
        "${CMAKE_CURRENT_LIST_DIR}/dialogs/qfilesystemmodel.h"
        "${CMAKE_CURRENT_LIST_DIR}/dialogs/qfontdialog.h"
        "${CMAKE_CURRENT_LIST_DIR}/dialogs/qframeless.h"
        "${CMAKE_CURRENT_LIST_DIR}/dialogs/qinputdialog.h"
        "${CMAKE_CURRENT_LIST_DIR}/dialogs/qmessagebox.h"
        "${CMAKE_CURRENT_LIST_DIR}/dialogs/qprintdialog.h"
        "${CMAKE_CURRENT_LIST_DIR}/dialogs/qprogressdialog.h"
    DESTINATION include/QtGui
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAbstractPageSetupDialog"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAbstractPrintDialog"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QColorDialog"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QDialog"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QErrorMessage"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QFileDialog"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QFileSystemModel"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QFontDialog"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QInputDialog"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QMessageBox"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QPrintDialog"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QProgressDialog"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QUnixPrintWidget"
    DESTINATION include/QtGui
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/dialogs/qabstractpagesetupdialog.h"
        "${CMAKE_CURRENT_LIST_DIR}/dialogs/qabstractprintdialog.h"
        "${CMAKE_CURRENT_LIST_DIR}/dialogs/qcolordialog.h"
        "${CMAKE_CURRENT_LIST_DIR}/dialogs/qdialog.h"
        "${CMAKE_CURRENT_LIST_DIR}/dialogs/qerrormessage.h"
        "${CMAKE_CURRENT_LIST_DIR}/dialogs/qfiledialog.h"
        "${CMAKE_CURRENT_LIST_DIR}/dialogs/qfilesystemmodel.h"
        "${CMAKE_CURRENT_LIST_DIR}/dialogs/qfontdialog.h"
        "${CMAKE_CURRENT_LIST_DIR}/dialogs/qinputdialog.h"
        "${CMAKE_CURRENT_LIST_DIR}/dialogs/qmessagebox.h"
        "${CMAKE_CURRENT_LIST_DIR}/dialogs/qprintdialog.h"
        "${CMAKE_CURRENT_LIST_DIR}/dialogs/qprogressdialog.h"
    DESTINATION include/Qt
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/effects/qgraphicseffect.h"
    DESTINATION include/QtGui
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsBlurEffect"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsColorizeEffect"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsDropShadowEffect"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsEffect"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsOpacityEffect"
    DESTINATION include/QtGui
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/effects/qgraphicseffect.h"
    DESTINATION include/Qt
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qcopchannel_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qdecoration_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qdecorationdefault_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qdecorationfactory_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qdecorationplugin_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qdecorationstyled_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qdecorationwindows_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qdirectpainter_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qkbd_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qkbddriverfactory_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qkbddriverplugin_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qkbdintegrity_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qkbdlinuxinput_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qkbdqnx_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qkbdtty_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qkbdum_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qkbdvfb_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qmouse_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qmousedriverfactory_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qmousedriverplugin_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qmouseintegrity_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qmouselinuxinput_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qmouselinuxtp_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qmousepc_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qmouseqnx_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qmousetslib_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qmousevfb_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qscreen_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qscreendriverfactory_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qscreendriverplugin_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qscreenintegrityfb_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qscreenlinuxfb_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qscreenproxy_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qscreenqnx_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qscreentransformed_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qscreenvfb_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qsoundqss_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qtransportauth_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qtransportauthdefs_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qvfbhdr.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qwindowsystem_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qwscursor_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qwsdisplay_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qwsembedwidget.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qwsevent_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qwsmanager_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qwsproperty_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qwsprotocolitem_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qwssocket_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qwsutils_qws.h"
    DESTINATION include/QtGui
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAuthDevice"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QCopChannel"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QDecoration"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QDecorationAction"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QDecorationDefault"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QDecorationFactory"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QDecorationFactoryInterface"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QDecorationPlugin"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QDecorationStyled"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QDecorationWindows"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QDirectPainter"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QIntfbScreen"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QIntMouseHandler"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QKbdDriverFactory"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QKbdDriverPlugin"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QLinuxFb_Shared"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QLinuxFbScreen"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QMouseDriverFactory"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QMouseDriverPlugin"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QPoolEntry"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QProxyScreen"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QProxyScreenCursor"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QQnxMouseHandler"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QQnxScreen"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QScreen"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QScreenCursor"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QScreenDriverFactory"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QScreenDriverFactoryInterface"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QScreenDriverPlugin"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTransformedScreen"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTransportAuth"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QVFbHeader"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QVFbKeyboardHandler"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QVFbKeyData"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QVFbMouseHandler"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QVFbScreen"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWSCalibratedMouseHandler"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWSClient"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWSCursor"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWSCursorMap"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWSDisplay"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWSEmbedWidget"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWSEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWSInputMethod"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWSInternalWindowInfo"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWSIntKeyboardHandler"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWSKeyboardHandler"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWSKeyboardHandlerFactoryInterface"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWSLinuxInputKeyboardHandler"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWSLinuxInputMouseHandler"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWSLinuxTPMouseHandler"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWSManager"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWSMouseHandler"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWSMouseHandlerFactoryInterface"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWSPcMouseHandler"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWSPointerCalibrationData"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWSPropertyManager"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWSProtocolItem"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWSQnxKeyboardHandler"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWSScreenSaver"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWSServer"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWSServerSocket"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWSSocket"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWSSoundClient"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWSSoundServer"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWSSoundServerSocket"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWSTslibMouseHandler"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWSTtyKeyboardHandler"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWSUmKeyboardHandler"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWSWindow"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWSWindowInfo"
    DESTINATION include/QtGui
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qcopchannel_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qdecoration_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qdecorationdefault_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qdecorationfactory_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qdecorationplugin_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qdecorationstyled_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qdecorationwindows_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qdirectpainter_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qkbd_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qkbddriverfactory_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qkbddriverplugin_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qkbdintegrity_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qkbdlinuxinput_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qkbdqnx_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qkbdtty_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qkbdum_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qkbdvfb_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qmouse_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qmousedriverfactory_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qmousedriverplugin_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qmouseintegrity_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qmouselinuxinput_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qmouselinuxtp_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qmousepc_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qmouseqnx_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qmousetslib_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qmousevfb_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qscreen_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qscreendriverfactory_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qscreendriverplugin_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qscreenintegrityfb_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qscreenlinuxfb_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qscreenproxy_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qscreenqnx_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qscreentransformed_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qscreenvfb_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qsoundqss_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qtransportauth_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qtransportauthdefs_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qvfbhdr.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qwindowsystem_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qwscursor_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qwsdisplay_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qwsembedwidget.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qwsevent_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qwsmanager_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qwsproperty_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qwsprotocolitem_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qwssocket_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/embedded/qwsutils_qws.h"
    DESTINATION include/Qt
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/graphicsview/qgraphicsanchorlayout.h"
        "${CMAKE_CURRENT_LIST_DIR}/graphicsview/qgraphicsgridlayout.h"
        "${CMAKE_CURRENT_LIST_DIR}/graphicsview/qgraphicsitem.h"
        "${CMAKE_CURRENT_LIST_DIR}/graphicsview/qgraphicsitemanimation.h"
        "${CMAKE_CURRENT_LIST_DIR}/graphicsview/qgraphicslayout.h"
        "${CMAKE_CURRENT_LIST_DIR}/graphicsview/qgraphicslayoutitem.h"
        "${CMAKE_CURRENT_LIST_DIR}/graphicsview/qgraphicslinearlayout.h"
        "${CMAKE_CURRENT_LIST_DIR}/graphicsview/qgraphicsproxywidget.h"
        "${CMAKE_CURRENT_LIST_DIR}/graphicsview/qgraphicsscene.h"
        "${CMAKE_CURRENT_LIST_DIR}/graphicsview/qgraphicssceneevent.h"
        "${CMAKE_CURRENT_LIST_DIR}/graphicsview/qgraphicstransform.h"
        "${CMAKE_CURRENT_LIST_DIR}/graphicsview/qgraphicsview.h"
        "${CMAKE_CURRENT_LIST_DIR}/graphicsview/qgraphicswidget.h"
    DESTINATION include/QtGui
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAbstractGraphicsShapeItem"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsAnchor"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsAnchorLayout"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsEllipseItem"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsGridLayout"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsItem"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsItemAnimation"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsItemGroup"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsLayout"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsLayoutItem"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsLinearLayout"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsLineItem"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsObject"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsPathItem"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsPixmapItem"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsPolygonItem"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsProxyWidget"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsRectItem"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsRotation"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsScale"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsScene"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsSceneContextMenuEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsSceneDragDropEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsSceneEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsSceneHelpEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsSceneHoverEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsSceneMouseEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsSceneMoveEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsSceneResizeEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsSceneWheelEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsSimpleTextItem"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsTextItem"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsTransform"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsView"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGraphicsWidget"
    DESTINATION include/QtGui
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/graphicsview/qgraphicsanchorlayout.h"
        "${CMAKE_CURRENT_LIST_DIR}/graphicsview/qgraphicsgridlayout.h"
        "${CMAKE_CURRENT_LIST_DIR}/graphicsview/qgraphicsitem.h"
        "${CMAKE_CURRENT_LIST_DIR}/graphicsview/qgraphicsitemanimation.h"
        "${CMAKE_CURRENT_LIST_DIR}/graphicsview/qgraphicslayout.h"
        "${CMAKE_CURRENT_LIST_DIR}/graphicsview/qgraphicslayoutitem.h"
        "${CMAKE_CURRENT_LIST_DIR}/graphicsview/qgraphicslinearlayout.h"
        "${CMAKE_CURRENT_LIST_DIR}/graphicsview/qgraphicsproxywidget.h"
        "${CMAKE_CURRENT_LIST_DIR}/graphicsview/qgraphicsscene.h"
        "${CMAKE_CURRENT_LIST_DIR}/graphicsview/qgraphicssceneevent.h"
        "${CMAKE_CURRENT_LIST_DIR}/graphicsview/qgraphicstransform.h"
        "${CMAKE_CURRENT_LIST_DIR}/graphicsview/qgraphicsview.h"
        "${CMAKE_CURRENT_LIST_DIR}/graphicsview/qgraphicswidget.h"
    DESTINATION include/Qt
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/image/qbitmap.h"
        "${CMAKE_CURRENT_LIST_DIR}/image/qicon.h"
        "${CMAKE_CURRENT_LIST_DIR}/image/qiconengine.h"
        "${CMAKE_CURRENT_LIST_DIR}/image/qiconengineplugin.h"
        "${CMAKE_CURRENT_LIST_DIR}/image/qimage.h"
        "${CMAKE_CURRENT_LIST_DIR}/image/qimageiohandler.h"
        "${CMAKE_CURRENT_LIST_DIR}/image/qimagereader.h"
        "${CMAKE_CURRENT_LIST_DIR}/image/qimagewriter.h"
        "${CMAKE_CURRENT_LIST_DIR}/image/qmovie.h"
        "${CMAKE_CURRENT_LIST_DIR}/image/qpicture.h"
        "${CMAKE_CURRENT_LIST_DIR}/image/qpictureformatplugin.h"
        "${CMAKE_CURRENT_LIST_DIR}/image/qpixmap.h"
        "${CMAKE_CURRENT_LIST_DIR}/image/qpixmapcache.h"
    DESTINATION include/QtGui
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${PROJECT_SOURCE_DIR}/include/QtGui/QBitmap"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QIcon"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QIconEngine"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QIconEngineFactoryInterface"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QIconEngineFactoryInterfaceV2"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QIconEnginePlugin"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QIconEnginePluginV2"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QIconEngineV2"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QIconSet"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QImage"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QImageIOHandler"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QImageIOHandlerFactoryInterface"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QImageIOPlugin"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QImageReader"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QImageTextKeyLang"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QImageWriter"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QMovie"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QPicture"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QPictureFormatInterface"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QPictureFormatPlugin"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QPictureIO"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QPixmap"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QPixmapCache"
    DESTINATION include/QtGui
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/image/qbitmap.h"
        "${CMAKE_CURRENT_LIST_DIR}/image/qicon.h"
        "${CMAKE_CURRENT_LIST_DIR}/image/qiconengine.h"
        "${CMAKE_CURRENT_LIST_DIR}/image/qiconengineplugin.h"
        "${CMAKE_CURRENT_LIST_DIR}/image/qimage.h"
        "${CMAKE_CURRENT_LIST_DIR}/image/qimageiohandler.h"
        "${CMAKE_CURRENT_LIST_DIR}/image/qimagereader.h"
        "${CMAKE_CURRENT_LIST_DIR}/image/qimagewriter.h"
        "${CMAKE_CURRENT_LIST_DIR}/image/qmovie.h"
        "${CMAKE_CURRENT_LIST_DIR}/image/qpicture.h"
        "${CMAKE_CURRENT_LIST_DIR}/image/qpictureformatplugin.h"
        "${CMAKE_CURRENT_LIST_DIR}/image/qpixmap.h"
        "${CMAKE_CURRENT_LIST_DIR}/image/qpixmapcache.h"
    DESTINATION include/Qt
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/inputmethod/qinputcontext.h"
        "${CMAKE_CURRENT_LIST_DIR}/inputmethod/qinputcontextfactory.h"
        "${CMAKE_CURRENT_LIST_DIR}/inputmethod/qinputcontextplugin.h"
    DESTINATION include/QtGui
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${PROJECT_SOURCE_DIR}/include/QtGui/QInputContext"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QInputContextFactory"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QInputContextFactoryInterface"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QInputContextPlugin"
    DESTINATION include/QtGui
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/inputmethod/qinputcontext.h"
        "${CMAKE_CURRENT_LIST_DIR}/inputmethod/qinputcontextfactory.h"
        "${CMAKE_CURRENT_LIST_DIR}/inputmethod/qinputcontextplugin.h"
    DESTINATION include/Qt
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qabstractitemdelegate.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qabstractitemview.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qabstractproxymodel.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qcolumnview.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qdatawidgetmapper.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qdirmodel.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qfileiconprovider.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qheaderview.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qidentityproxymodel.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qitemdelegate.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qitemeditorfactory.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qitemselectionmodel.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qlistview.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qlistwidget.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qproxymodel.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qsortfilterproxymodel.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qstandarditemmodel.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qstringlistmodel.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qstyleditemdelegate.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qtableview.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qtablewidget.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qtreeview.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qtreewidget.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qtreewidgetitemiterator.h"
    DESTINATION include/QtGui
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAbstractItemDelegate"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAbstractItemView"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAbstractProxyModel"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QColumnView"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QDataWidgetMapper"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QDirModel"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QFileIconProvider"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QHeaderView"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QIdentityProxyModel"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QItemDelegate"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QItemEditorCreator"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QItemEditorCreatorBase"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QItemEditorFactory"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QItemSelection"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QItemSelectionModel"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QItemSelectionRange"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QListView"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QListWidget"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QListWidgetItem"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QProxyModel"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QSortFilterProxyModel"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStandardItem"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStandardItemEditorCreator"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStandardItemModel"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStringListModel"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyledItemDelegate"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTableView"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTableWidget"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTableWidgetItem"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTableWidgetSelectionRange"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTreeView"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTreeWidget"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTreeWidgetItem"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTreeWidgetItemIterator"
    DESTINATION include/QtGui
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qabstractitemdelegate.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qabstractitemview.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qabstractproxymodel.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qcolumnview.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qdatawidgetmapper.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qdirmodel.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qfileiconprovider.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qheaderview.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qidentityproxymodel.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qitemdelegate.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qitemeditorfactory.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qitemselectionmodel.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qlistview.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qlistwidget.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qproxymodel.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qsortfilterproxymodel.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qstandarditemmodel.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qstringlistmodel.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qstyleditemdelegate.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qtableview.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qtablewidget.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qtreeview.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qtreewidget.h"
        "${CMAKE_CURRENT_LIST_DIR}/itemviews/qtreewidgetitemiterator.h"
    DESTINATION include/Qt
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qaction.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qactiongroup.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qapplication.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qboxlayout.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qclipboard.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qcursor.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qdesktopwidget.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qdrag.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qevent.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qformlayout.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qgesture.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qgesturerecognizer.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qgridlayout.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qkeysequence.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qlayout.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qlayoutitem.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qmime.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qpalette.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qsessionmanager.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qshortcut.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qsizepolicy.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qsound.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qstackedlayout.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qtooltip.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qwhatsthis.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qwidget.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qwidgetaction.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qwindowdefs_win.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qwindowdefs.h"
    DESTINATION include/QtGui
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAction"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QActionEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QActionGroup"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QApplication"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QBoxLayout"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QClipboard"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QClipboardEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QCloseEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QColorGroup"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QContextMenuEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QCursor"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QCursorShape"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QDesktopWidget"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QDrag"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QDragEnterEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QDragLeaveEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QDragMoveEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QDragResponseEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QDropEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QFileOpenEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QFocusEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QFormLayout"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGesture"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGestureEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGestureRecognizer"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGridLayout"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QHBoxLayout"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QHelpEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QHideEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QHoverEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QIconDragEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QInputEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QInputMethodEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QKeyEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QKeySequence"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QLayout"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QLayoutItem"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QLayoutIterator"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QMacMime"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QMacPasteboardMime"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QMenubarUpdatedEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QMimeSource"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QMouseEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QMoveEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QPaintEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QPalette"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QPanGesture"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QPinchGesture"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QResizeEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QSessionManager"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QShortcut"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QShortcutEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QShowEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QSizePolicy"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QSound"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QSpacerItem"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStackedLayout"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStatusTipEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QSwipeGesture"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTabletEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTapAndHoldGesture"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTapGesture"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QtEvents"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QToolBarChangeEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QToolTip"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTouchEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QUpdateLaterEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QVBoxLayout"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWhatsThis"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWhatsThisClickedEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWheelEvent"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWidget"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWidgetAction"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWidgetData"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWidgetItem"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWidgetItemV2"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWidgetList"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWidgetMapper"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWidgetSet"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWindowsMime"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWindowStateChangeEvent"
    DESTINATION include/QtGui
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qaction.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qactiongroup.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qapplication.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qboxlayout.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qclipboard.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qcursor.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qdesktopwidget.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qdrag.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qevent.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qformlayout.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qgesture.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qgesturerecognizer.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qgridlayout.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qkeysequence.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qlayout.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qlayoutitem.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qmime.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qpalette.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qsessionmanager.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qshortcut.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qsizepolicy.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qsound.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qstackedlayout.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qtooltip.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qwhatsthis.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qwidget.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qwidgetaction.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qwindowdefs_win.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/qwindowdefs.h"
    DESTINATION include/Qt
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/math3d/qgenericmatrix.h"
        "${CMAKE_CURRENT_LIST_DIR}/math3d/qmatrix4x4.h"
        "${CMAKE_CURRENT_LIST_DIR}/math3d/qquaternion.h"
        "${CMAKE_CURRENT_LIST_DIR}/math3d/qvector2d.h"
        "${CMAKE_CURRENT_LIST_DIR}/math3d/qvector3d.h"
        "${CMAKE_CURRENT_LIST_DIR}/math3d/qvector4d.h"
    DESTINATION include/QtGui
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGenericMatrix"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QMatrix2x2"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QMatrix2x3"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QMatrix2x4"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QMatrix3x2"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QMatrix3x3"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QMatrix3x4"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QMatrix4x2"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QMatrix4x3"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QMatrix4x4"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QQuaternion"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QVector2D"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QVector3D"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QVector4D"
    DESTINATION include/QtGui
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/math3d/qgenericmatrix.h"
        "${CMAKE_CURRENT_LIST_DIR}/math3d/qmatrix4x4.h"
        "${CMAKE_CURRENT_LIST_DIR}/math3d/qquaternion.h"
        "${CMAKE_CURRENT_LIST_DIR}/math3d/qvector2d.h"
        "${CMAKE_CURRENT_LIST_DIR}/math3d/qvector3d.h"
        "${CMAKE_CURRENT_LIST_DIR}/math3d/qvector4d.h"
    DESTINATION include/Qt
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/painting/qbrush.h"
        "${CMAKE_CURRENT_LIST_DIR}/painting/qcolor.h"
        "${CMAKE_CURRENT_LIST_DIR}/painting/qcolormap.h"
        "${CMAKE_CURRENT_LIST_DIR}/painting/qdrawutil.h"
        "${CMAKE_CURRENT_LIST_DIR}/painting/qmatrix.h"
        "${CMAKE_CURRENT_LIST_DIR}/painting/qpaintdevice.h"
        "${CMAKE_CURRENT_LIST_DIR}/painting/qpaintengine.h"
        "${CMAKE_CURRENT_LIST_DIR}/painting/qpainter.h"
        "${CMAKE_CURRENT_LIST_DIR}/painting/qpainterpath.h"
        "${CMAKE_CURRENT_LIST_DIR}/painting/qpen.h"
        "${CMAKE_CURRENT_LIST_DIR}/painting/qpolygon.h"
        "${CMAKE_CURRENT_LIST_DIR}/painting/qprintengine.h"
        "${CMAKE_CURRENT_LIST_DIR}/painting/qprinter.h"
        "${CMAKE_CURRENT_LIST_DIR}/painting/qprinterinfo.h"
        "${CMAKE_CURRENT_LIST_DIR}/painting/qregion.h"
        "${CMAKE_CURRENT_LIST_DIR}/painting/qrgb.h"
        "${CMAKE_CURRENT_LIST_DIR}/painting/qstylepainter.h"
        "${CMAKE_CURRENT_LIST_DIR}/painting/qtransform.h"
        "${CMAKE_CURRENT_LIST_DIR}/painting/qwmatrix.h"
    DESTINATION include/QtGui
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${PROJECT_SOURCE_DIR}/include/QtGui/QBrush"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QBrushData"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QColor"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QColormap"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QConicalGradient"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGradient"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGradientStop"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGradientStops"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QLinearGradient"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QMatrix"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QPaintDevice"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QPaintEngine"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QPaintEngineState"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QPainter"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QPainterPath"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QPainterPathPrivate"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QPainterPathStroker"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QPen"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QPolygon"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QPolygonF"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QPrintEngine"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QPrinter"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QPrinterInfo"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QRadialGradient"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QRegion"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QRgb"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStylePainter"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTextItem"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTileRules"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTransform"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWMatrix"
    DESTINATION include/QtGui
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/painting/qbrush.h"
        "${CMAKE_CURRENT_LIST_DIR}/painting/qcolor.h"
        "${CMAKE_CURRENT_LIST_DIR}/painting/qcolormap.h"
        "${CMAKE_CURRENT_LIST_DIR}/painting/qdrawutil.h"
        "${CMAKE_CURRENT_LIST_DIR}/painting/qmatrix.h"
        "${CMAKE_CURRENT_LIST_DIR}/painting/qpaintdevice.h"
        "${CMAKE_CURRENT_LIST_DIR}/painting/qpaintengine.h"
        "${CMAKE_CURRENT_LIST_DIR}/painting/qpainter.h"
        "${CMAKE_CURRENT_LIST_DIR}/painting/qpainterpath.h"
        "${CMAKE_CURRENT_LIST_DIR}/painting/qpen.h"
        "${CMAKE_CURRENT_LIST_DIR}/painting/qpolygon.h"
        "${CMAKE_CURRENT_LIST_DIR}/painting/qprintengine.h"
        "${CMAKE_CURRENT_LIST_DIR}/painting/qprinter.h"
        "${CMAKE_CURRENT_LIST_DIR}/painting/qprinterinfo.h"
        "${CMAKE_CURRENT_LIST_DIR}/painting/qregion.h"
        "${CMAKE_CURRENT_LIST_DIR}/painting/qrgb.h"
        "${CMAKE_CURRENT_LIST_DIR}/painting/qstylepainter.h"
        "${CMAKE_CURRENT_LIST_DIR}/painting/qtransform.h"
        "${CMAKE_CURRENT_LIST_DIR}/painting/qwmatrix.h"
    DESTINATION include/Qt
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/s60framework/qs60mainapplication.h"
        "${CMAKE_CURRENT_LIST_DIR}/s60framework/qs60mainappui.h"
        "${CMAKE_CURRENT_LIST_DIR}/s60framework/qs60maindocument.h"
    DESTINATION include/QtGui
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${PROJECT_SOURCE_DIR}/include/QtGui/QS60MainApplication"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QS60MainApplicationBase"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QS60MainAppUi"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QS60MainAppUiBase"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QS60MainDocument"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QS60MainDocumentBase"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QS60StubAknAppUi"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QS60StubAknAppUiBase"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QS60StubMAknTouchPaneObserver"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QS60StubMEikStatusPaneObserver"
    DESTINATION include/QtGui
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/s60framework/qs60mainapplication.h"
        "${CMAKE_CURRENT_LIST_DIR}/s60framework/qs60mainappui.h"
        "${CMAKE_CURRENT_LIST_DIR}/s60framework/qs60maindocument.h"
    DESTINATION include/Qt
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/statemachine/qkeyeventtransition.h"
        "${CMAKE_CURRENT_LIST_DIR}/statemachine/qmouseeventtransition.h"
    DESTINATION include/QtGui
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${PROJECT_SOURCE_DIR}/include/QtGui/QKeyEventTransition"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QMouseEventTransition"
    DESTINATION include/QtGui
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/statemachine/qkeyeventtransition.h"
        "${CMAKE_CURRENT_LIST_DIR}/statemachine/qmouseeventtransition.h"
    DESTINATION include/Qt
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/styles/qcdestyle.h"
        "${CMAKE_CURRENT_LIST_DIR}/styles/qcleanlooksstyle.h"
        "${CMAKE_CURRENT_LIST_DIR}/styles/qcommonstyle.h"
        "${CMAKE_CURRENT_LIST_DIR}/styles/qmotifstyle.h"
        "${CMAKE_CURRENT_LIST_DIR}/styles/qproxystyle.h"
        "${CMAKE_CURRENT_LIST_DIR}/styles/qstyle.h"
        "${CMAKE_CURRENT_LIST_DIR}/styles/qstylefactory.h"
        "${CMAKE_CURRENT_LIST_DIR}/styles/qstyleoption.h"
        "${CMAKE_CURRENT_LIST_DIR}/styles/qstyleplugin.h"
        "${CMAKE_CURRENT_LIST_DIR}/styles/qwindowsstyle.h"
        "${CMAKE_CURRENT_LIST_DIR}/styles/qwindowsvistastyle.h"
        "${CMAKE_CURRENT_LIST_DIR}/styles/qwindowsxpstyle.h"
    DESTINATION include/QtGui
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${PROJECT_SOURCE_DIR}/include/QtGui/QCDEStyle"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QCleanlooksStyle"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QCommonStyle"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QMotifStyle"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QProxyStyle"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyle"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleFactory"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleFactoryInterface"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleHintReturn"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleHintReturnMask"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleHintReturnVariant"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOption"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOptionButton"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOptionComboBox"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOptionComplex"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOptionDockWidget"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOptionDockWidgetV2"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOptionFocusRect"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOptionFrame"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOptionFrameV2"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOptionFrameV3"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOptionGraphicsItem"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOptionGroupBox"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOptionHeader"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOptionMenuItem"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOptionProgressBar"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOptionProgressBarV2"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOptionQ3DockWindow"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOptionQ3ListView"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOptionQ3ListViewItem"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOptionRubberBand"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOptionSizeGrip"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOptionSlider"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOptionSpinBox"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOptionTab"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOptionTabBarBase"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOptionTabBarBaseV2"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOptionTabV2"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOptionTabV3"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOptionTabWidgetFrame"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOptionTabWidgetFrameV2"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOptionTitleBar"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOptionToolBar"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOptionToolBox"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOptionToolBoxV2"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOptionToolButton"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOptionViewItem"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOptionViewItemV2"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOptionViewItemV3"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStyleOptionViewItemV4"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStylePlugin"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWindowsStyle"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWindowsVistaStyle"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWindowsXPStyle"
    DESTINATION include/QtGui
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/styles/qcdestyle.h"
        "${CMAKE_CURRENT_LIST_DIR}/styles/qcleanlooksstyle.h"
        "${CMAKE_CURRENT_LIST_DIR}/styles/qcommonstyle.h"
        "${CMAKE_CURRENT_LIST_DIR}/styles/qmotifstyle.h"
        "${CMAKE_CURRENT_LIST_DIR}/styles/qproxystyle.h"
        "${CMAKE_CURRENT_LIST_DIR}/styles/qstyle.h"
        "${CMAKE_CURRENT_LIST_DIR}/styles/qstylefactory.h"
        "${CMAKE_CURRENT_LIST_DIR}/styles/qstyleoption.h"
        "${CMAKE_CURRENT_LIST_DIR}/styles/qstyleplugin.h"
        "${CMAKE_CURRENT_LIST_DIR}/styles/qwindowsstyle.h"
        "${CMAKE_CURRENT_LIST_DIR}/styles/qwindowsvistastyle.h"
        "${CMAKE_CURRENT_LIST_DIR}/styles/qwindowsxpstyle.h"
    DESTINATION include/Qt
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/symbian/qsymbianevent.h"
    DESTINATION include/QtGui
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${PROJECT_SOURCE_DIR}/include/QtGui/QSymbianEvent"
    DESTINATION include/QtGui
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/symbian/qsymbianevent.h"
    DESTINATION include/Qt
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/text/qabstractfontengine_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qabstracttextdocumentlayout.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qfont.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qfontdatabase.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qfontinfo.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qfontmetrics.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qglyphrun.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qplatformfontdatabase_qpa.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qrawfont.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qstatictext.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qsyntaxhighlighter.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qtextcursor.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qtextdocument.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qtextdocumentfragment.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qtextdocumentwriter.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qtextformat.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qtextlayout.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qtextlist.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qtextobject.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qtextoption.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qtexttable.h"
    DESTINATION include/QtGui
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAbstractFontEngine"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAbstractTextDocumentLayout"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAbstractUndoItem"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QFont"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QFontDatabase"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QFontEngineFactoryInterface"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QFontEngineInfo"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QFontEnginePlugin"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QFontInfo"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QFontMetrics"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QFontMetricsF"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGlyphRun"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QPlatformFontDatabase"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QRawFont"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStaticText"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QSupportedWritingSystems"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QSyntaxHighlighter"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTextBlock"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTextBlockFormat"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTextBlockGroup"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTextBlockUserData"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTextCharFormat"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTextCursor"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTextDocument"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTextDocumentFragment"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTextDocumentWriter"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTextFormat"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTextFragment"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTextFrame"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTextFrameFormat"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTextFrameLayoutData"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTextImageFormat"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTextInlineObject"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTextLayout"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTextLength"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTextLine"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTextList"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTextListFormat"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTextObject"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTextObjectInterface"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTextOption"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTextTable"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTextTableCell"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTextTableCellFormat"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTextTableFormat"
    DESTINATION include/QtGui
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/text/qabstractfontengine_qws.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qabstracttextdocumentlayout.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qfont.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qfontdatabase.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qfontinfo.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qfontmetrics.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qglyphrun.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qplatformfontdatabase_qpa.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qrawfont.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qstatictext.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qsyntaxhighlighter.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qtextcursor.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qtextdocument.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qtextdocumentfragment.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qtextdocumentwriter.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qtextformat.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qtextlayout.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qtextlist.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qtextobject.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qtextoption.h"
        "${CMAKE_CURRENT_LIST_DIR}/text/qtexttable.h"
    DESTINATION include/Qt
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/util/qcompleter.h"
        "${CMAKE_CURRENT_LIST_DIR}/util/qdesktopservices.h"
        "${CMAKE_CURRENT_LIST_DIR}/util/qsystemtrayicon.h"
    DESTINATION include/QtGui
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${PROJECT_SOURCE_DIR}/include/QtGui/QCompleter"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QDesktopServices"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QSystemTrayIcon"
    DESTINATION include/QtGui
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/util/qcompleter.h"
        "${CMAKE_CURRENT_LIST_DIR}/util/qdesktopservices.h"
        "${CMAKE_CURRENT_LIST_DIR}/util/qsystemtrayicon.h"
    DESTINATION include/Qt
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qabstractbutton.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qabstractscrollarea.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qabstractslider.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qabstractspinbox.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qbuttongroup.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qcalendarwidget.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qcheckbox.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qcombobox.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qcommandlinkbutton.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qdatetimeedit.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qdial.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qdialogbuttonbox.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qdockwidget.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qfocusframe.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qfontcombobox.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qframe.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qgroupbox.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qlabel.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qlcdnumber.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qlineedit.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qmainwindow.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qmdiarea.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qmdisubwindow.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qmenu.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qmenubar.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qmenudata.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qplaintextedit.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qprintpreviewwidget.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qprogressbar.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qpushbutton.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qradiobutton.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qrubberband.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qscrollarea.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qscrollbar.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qsizegrip.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qslider.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qspinbox.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qsplashscreen.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qsplitter.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qstackedwidget.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qstatusbar.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qtabbar.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qtabwidget.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qtextbrowser.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qtextedit.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qtoolbar.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qtoolbox.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qtoolbutton.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qvalidator.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qworkspace.h"
    DESTINATION include/QtGui
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAbstractButton"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAbstractScrollArea"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAbstractSlider"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QAbstractSpinBox"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QButtonGroup"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QCalendarWidget"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QCheckBox"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QComboBox"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QCommandLinkButton"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QDateEdit"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QDateTimeEdit"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QDial"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QDialogButtonBox"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QDockWidget"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QDoubleSpinBox"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QDoubleValidator"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QFocusFrame"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QFontComboBox"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QFrame"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QGroupBox"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QIntValidator"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QLabel"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QLCDNumber"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QLineEdit"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QMainWindow"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QMdiArea"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QMdiSubWindow"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QMenu"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QMenuBar"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QMenuItem"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QPlainTextDocumentLayout"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QPlainTextEdit"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QPrintPreviewWidget"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QProgressBar"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QPushButton"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QRadioButton"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QRegExpValidator"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QRubberBand"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QScrollArea"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QScrollBar"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QSizeGrip"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QSlider"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QSpinBox"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QSplashScreen"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QSplitter"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QSplitterHandle"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStackedWidget"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QStatusBar"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTabBar"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTabWidget"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTextBrowser"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTextEdit"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QTimeEdit"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QToolBar"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QToolBox"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QToolButton"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QValidator"
        "${PROJECT_SOURCE_DIR}/include/QtGui/QWorkspace"
    DESTINATION include/QtGui
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qabstractbutton.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qabstractscrollarea.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qabstractslider.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qabstractspinbox.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qbuttongroup.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qcalendarwidget.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qcheckbox.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qcombobox.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qcommandlinkbutton.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qdatetimeedit.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qdial.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qdialogbuttonbox.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qdockwidget.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qfocusframe.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qfontcombobox.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qframe.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qgroupbox.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qlabel.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qlcdnumber.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qlineedit.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qmainwindow.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qmdiarea.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qmdisubwindow.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qmenu.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qmenubar.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qmenudata.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qplaintextedit.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qprintpreviewwidget.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qprogressbar.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qpushbutton.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qradiobutton.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qrubberband.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qscrollarea.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qscrollbar.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qsizegrip.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qslider.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qspinbox.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qsplashscreen.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qsplitter.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qstackedwidget.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qstatusbar.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qtabbar.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qtabwidget.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qtextbrowser.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qtextedit.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qtoolbar.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qtoolbox.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qtoolbutton.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qvalidator.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/qworkspace.h"
    DESTINATION include/Qt
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/dialogs/tmp/qpagesetupdialog.h"
        "${CMAKE_CURRENT_LIST_DIR}/dialogs/tmp/qprintpreviewdialog.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/tmp/qgenericplugin_qpa.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/tmp/qgenericpluginfactory_qpa.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/tmp/qguifunctions_wince.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/tmp/qmacdefines_mac.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/tmp/qplatformclipboard_qpa.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/tmp/qplatformcursor_qpa.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/tmp/qplatformeventloopintegration_qpa.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/tmp/qplatformglcontext_qpa.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/tmp/qplatformintegration_qpa.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/tmp/qplatformintegrationplugin_qpa.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/tmp/qplatformnativeinterface_qpa.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/tmp/qplatformscreen_qpa.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/tmp/qplatformwindow_qpa.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/tmp/qplatformwindowformat_qpa.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/tmp/qwindowsysteminterface_qpa.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/tmp/qx11embed_x11.h"
        "${CMAKE_CURRENT_LIST_DIR}/kernel/tmp/qx11info_x11.h"
        "${CMAKE_CURRENT_LIST_DIR}/painting/tmp/qgraphicssystemhelper_symbian.h"
        "${CMAKE_CURRENT_LIST_DIR}/styles/tmp/qgtkstyle.h"
        "${CMAKE_CURRENT_LIST_DIR}/styles/tmp/qmacstyle_mac.h"
        "${CMAKE_CURRENT_LIST_DIR}/styles/tmp/qplastiquestyle.h"
        "${CMAKE_CURRENT_LIST_DIR}/styles/tmp/qs60style.h"
        "${CMAKE_CURRENT_LIST_DIR}/styles/tmp/qwindowscestyle.h"
        "${CMAKE_CURRENT_LIST_DIR}/styles/tmp/qwindowsmobilestyle.h"
        "${CMAKE_CURRENT_LIST_DIR}/util/tmp/qundogroup.h"
        "${CMAKE_CURRENT_LIST_DIR}/util/tmp/qundostack.h"
        "${CMAKE_CURRENT_LIST_DIR}/util/tmp/qundoview.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/tmp/qmaccocoaviewcontainer_mac.h"
        "${CMAKE_CURRENT_LIST_DIR}/widgets/tmp/qmacnativewidget_mac.h"
    DESTINATION include/Qt
    CONFIGURATIONS Release
    COMPONENT Development
)
