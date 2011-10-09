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
        ToolIcon {
            anchors.centerIn: parent // a single icon is left-aligned by default
            platformIconId: "icon-m-toolbar-add"
            onClicked: {
                placeholderTasks.append({title: "placeholder", durationMinutes: Math.random() * 120 })
            }
        }
    }

    ListModel {
        id: placeholderTasks
        ListElement { title: "work work"; durationMinutes: 137 }
        ListElement { title: "quick lunch **"; durationMinutes: 30 }
        ListElement { title: "more work"; durationMinutes: 182 }
        ListElement { title: "placeholder"; durationMinutes: 60 }
        ListElement { title: "long long long placeholder text goes here"; durationMinutes: 65 }
        ListElement { title: "so I wonder what happens when I have realistically long task titles"; durationMinutes: 0 }
        ListElement { title: "placeholder"; durationMinutes: 0 }
    }
}
