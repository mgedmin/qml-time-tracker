import QtQuick 1.0
import com.nokia.meego 1.0

// import "UIConstants.js" as UIConstants <-- DOES NOT WORK WHYYYYY???

PageStackWindow {
    id: appWindow

    initialPage: mainPage

    MainPage {
        id: mainPage
    }

    ToolBarLayout {
        id: taskListTools
        visible: true
        ToolIcon {
            anchors.centerIn: parent
            platformIconId: "icon-m-toolbar-add"
        }
    }
}
