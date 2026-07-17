install(
    FILES
        "${PROJECT_SOURCE_DIR}/include/QtSvg/QtSvg"
    DESTINATION include/QtSvg
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/qgraphicssvgitem.h"
        "${CMAKE_CURRENT_LIST_DIR}/qsvggenerator.h"
        "${CMAKE_CURRENT_LIST_DIR}/qsvgrenderer.h"
        "${CMAKE_CURRENT_LIST_DIR}/qsvgwidget.h"
    DESTINATION include/QtSvg
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${PROJECT_SOURCE_DIR}/include/QtSvg/QGraphicsSvgItem"
        "${PROJECT_SOURCE_DIR}/include/QtSvg/QSvgGenerator"
        "${PROJECT_SOURCE_DIR}/include/QtSvg/QSvgRenderer"
        "${PROJECT_SOURCE_DIR}/include/QtSvg/QSvgWidget"
    DESTINATION include/QtSvg
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/qgraphicssvgitem.h"
        "${CMAKE_CURRENT_LIST_DIR}/qsvggenerator.h"
        "${CMAKE_CURRENT_LIST_DIR}/qsvgrenderer.h"
        "${CMAKE_CURRENT_LIST_DIR}/qsvgwidget.h"
    DESTINATION include/Qt
    CONFIGURATIONS Release
    COMPONENT Development
)
