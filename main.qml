import QtQuick 2.12
import QtQuick.Window 2.12

//Javascript Functions

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    id: root

    Item {
        id: code
        function performClick() {
            print("Javascript in a signal handler")
            var max = root.width - box.width
            box.x = (box.x == 0) ? max : 0
        }
    }

    Rectangle {
        id: box
        color: swapcolor() //Javascript property
        width: 100
        height: 100
        x: 0
        y: (parent.height / 2) - (height / 2)

        //function can be in a component
        function swapcolor() {
            return area.pressed ? "orange" : "gray"
        }

        MouseArea {
            id: area
            anchors.fill: parent
            onClicked: code.performClick()
        }
    }

}

