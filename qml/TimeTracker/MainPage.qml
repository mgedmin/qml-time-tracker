import QtQuick 1.0
import com.nokia.meego 1.0

Page {
    tools: taskListTools

    Header {
        id: header
        title: "Time Log"
        color: '#f0b010'
    }

    ListView {
        id: mainList
        width: parent.width
        anchors.top: header.bottom
        anchors.bottom: parent.bottom
        clip: true
        model: placeholderTasks
        delegate: TaskListItem { }
    }

    ScrollDecorator {
        flickableItem: mainList
    }

}
