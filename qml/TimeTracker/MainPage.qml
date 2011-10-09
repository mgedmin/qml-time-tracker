import QtQuick 1.0
import com.nokia.meego 1.0

Page {
    tools: taskListTools

    ListView {
        id: mainList
        width: parent.width
        header: Header {
            id: header
            title: "Time Log"
            color: '#f0b010'
        }
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        model: placeholderTasks
        delegate: TaskListItem { }
    }

    ScrollDecorator {
        flickableItem: mainList
    }

}
