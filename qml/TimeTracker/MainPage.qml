import QtQuick 1.0
import com.nokia.meego 1.0

Page {
    Rectangle {
        id: header
        color: '#f0b010'
        width: parent.width
        height: 72

        Text {
            x: 20
            anchors.verticalCenter: parent.verticalCenter
            text: "Time Log"
            color: "white"
            font.pixelSize: 32
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
                durationMinutes: 0
            }
            ListElement {
                title: "placeholder"
                durationMinutes: 0
            }
            ListElement {
                title: "placeholder"
                durationMinutes: 0
            }
            ListElement {
                title: "placeholder"
                durationMinutes: 0
            }
            ListElement {
                title: "placeholder"
                durationMinutes: 0
            }
            ListElement {
                title: "placeholder"
                durationMinutes: 0
            }
            ListElement {
                title: "placeholder"
                durationMinutes: 0
            }
            ListElement {
                title: "placeholder"
                durationMinutes: 0
            }
            ListElement {
                title: "placeholder"
                durationMinutes: 0
            }
            ListElement {
                title: "placeholder"
                durationMinutes: 0
            }
            ListElement {
                title: "placeholder"
                durationMinutes: 0
            }
            ListElement {
                title: "placeholder"
                durationMinutes: 0
            }
            ListElement {
                title: "placeholder"
                durationMinutes: 0
            }
        }
        delegate: Item {
            height: 80
            width: parent.width
            Text {
                id: titleText
                anchors.left: parent.left
                anchors.leftMargin: 20
                anchors.verticalCenter: parent.verticalCenter
                text: title
                font.pixelSize: 32
            }
            Text {
//                anchors.baseline: titleText.baseline
                anchors.verticalCenter: parent.verticalCenter
                anchors.verticalCenterOffset: 3
                anchors.right: parent.right
                anchors.rightMargin: 20
                text: formatTime(durationMinutes)
                font.pixelSize: 24
                color: Qt.rgba(0.5, 0.5, 0.5, 1.0)

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
