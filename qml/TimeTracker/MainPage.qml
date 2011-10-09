import QtQuick 1.0
import com.nokia.meego 1.0

Page {
    tools: taskListTools

    Rectangle {
        id: header
        color: '#f0b010'
        width: parent.width
        height: 72

        Text {
            x: 16
            anchors.verticalCenter: parent.verticalCenter
            text: "Time Log"
            color: "white"
            font.pixelSize: 32
        }

        // It would be better to use a background image, perhaps?
        Rectangle {
            height: 1
            width: parent.width
            anchors.bottom: parent.bottom
            color: "#10000000"
        }
        Rectangle {
            height: 1
            width: parent.width
            anchors.top: parent.bottom
            anchors.topMargin: 1
            color: "white"
        }
    }

    ListView {
        id: mainList
        width: parent.width
        anchors.top: header.bottom
        anchors.bottom: parent.bottom
        clip: true
        model: ListModel {
            ListElement {
                title: "work work"
                durationMinutes: 137 // 2 * 60 + 17
            }
            ListElement {
                title: "quick lunch **"
                durationMinutes: 30
            }
            ListElement {
                title: "more work"
                durationMinutes: 182 // 3 * 60 + 2
            }
            ListElement {
                title: "placeholder"
                durationMinutes: 60
            }
            ListElement { title: "placeholder"; durationMinutes: 0 }
            ListElement { title: "placeholder"; durationMinutes: 0 }
            ListElement { title: "placeholder"; durationMinutes: 0 }
            ListElement { title: "placeholder"; durationMinutes: 0 }
            ListElement { title: "placeholder"; durationMinutes: 0 }
            ListElement { title: "placeholder"; durationMinutes: 0 }
            ListElement { title: "placeholder"; durationMinutes: 0 }
            ListElement { title: "placeholder"; durationMinutes: 0 }
            ListElement { title: "placeholder"; durationMinutes: 0 }
            ListElement { title: "placeholder"; durationMinutes: 0 }
            ListElement { title: "placeholder"; durationMinutes: 0 }
            ListElement { title: "placeholder"; durationMinutes: 0 }
            ListElement { title: "placeholder"; durationMinutes: 0 }
            ListElement { title: "placeholder"; durationMinutes: 0 }
            ListElement { title: "placeholder"; durationMinutes: 0 }
            ListElement { title: "placeholder"; durationMinutes: 0 }
            ListElement { title: "placeholder"; durationMinutes: 0 }
            ListElement { title: "placeholder"; durationMinutes: 0 }
            ListElement { title: "placeholder"; durationMinutes: 0 }
            ListElement { title: "placeholder"; durationMinutes: 0 }
            ListElement { title: "placeholder"; durationMinutes: 0 }
            ListElement { title: "placeholder"; durationMinutes: 0 }
            ListElement { title: "placeholder"; durationMinutes: 0 }
        }
        delegate: Item {
            height: 64
            width: parent.width
            Text {
                id: titleText
                x: 16
                anchors.verticalCenter: parent.verticalCenter
                text: title
                font.pixelSize: 24
            }
            Text {
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.rightMargin: 16
                text: formatTime(durationMinutes)
                font.pixelSize: 22
                color: '#808080'

                function formatTime(minutes) {
                    if (minutes >= 60) {
                        return Math.floor(minutes / 60) + " h " + minutes % 60 + " min"
                    } else {
                        return minutes + " min"
                    }
                }

            }
        }
    }
    ScrollDecorator {
        flickableItem: mainList
    }

}
