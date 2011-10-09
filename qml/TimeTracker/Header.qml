import QtQuick 1.0

Rectangle {
    property alias title: titleText.text
    property alias titleColor: titleText.color

    width: parent ? parent.width : 0
    height: 72
    color: '#808080'

    Text {
        id: titleText
        x: 16
        anchors.verticalCenter: parent.verticalCenter
        color: "white"
        font.pixelSize: 32
    }

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
