import QtQuick 1.0

Item {
    height: 64
    width: parent ? parent.width : 0
    Text {
        id: titleText
        anchors.left: parent.left
        anchors.leftMargin: 16
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: durationText.left
        anchors.rightMargin: 10
        text: title
        font.pixelSize: 24
        elide: Text.ElideRight
    }
    Text {
        id: durationText
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 16
        text: formatTime(durationMinutes)
        font.pixelSize: 22
        color: '#808080'

        function formatTime(minutes) {
            if (minutes >= 60) {
                return Math.floor(minutes / 60) + " h " + Math.floor(minutes % 60) + " min"
            } else {
                return Math.floor(minutes) + " min"
            }
        }

    }
}
