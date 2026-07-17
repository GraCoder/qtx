install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/dom/qdom.h"
    DESTINATION include/Qt
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/sax/qxml.h"
    DESTINATION include/Qt
    CONFIGURATIONS Release
    COMPONENT Development
)

install(
    FILES
        "${CMAKE_CURRENT_LIST_DIR}/stream/qxmlstream.h"
    DESTINATION include/Qt
    CONFIGURATIONS Release
    COMPONENT Development
)
