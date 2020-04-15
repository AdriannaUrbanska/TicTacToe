import QtQuick 2.5

Rectangle {
    property alias textEdit: textEdit

    width: 360
    height: 360
    property alias mouseArea: mouseArea

    MouseArea {
        id: mouseArea
        anchors.rightMargin: 0
        anchors.bottomMargin: 15
        anchors.topMargin: 0
        anchors.leftMargin: 0
        anchors.fill: parent

        Item {
            id: field1
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 220
            anchors.right: parent.right
            anchors.rightMargin: 252
            anchors.left: parent.left
            anchors.leftMargin: 8
            anchors.top: parent.top
            anchors.topMargin: 25
            transformOrigin: Item.Center
        }

        Item {
            id: field2
            anchors.top: parent.top
            anchors.topMargin: 25
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 220
            anchors.left: parent.left
            anchors.leftMargin: 114
            anchors.right: parent.right
            anchors.rightMargin: 146
        }

        Item {
            id: field3
            anchors.right: parent.right
            anchors.rightMargin: 40
            anchors.left: parent.left
            anchors.leftMargin: 220
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 220
            anchors.top: parent.top
            anchors.topMargin: 25
        }

        Item {
            id: field4
            anchors.right: parent.right
            anchors.rightMargin: 252
            anchors.left: parent.left
            anchors.leftMargin: 8
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 114
            anchors.top: parent.top
            anchors.topMargin: 131
        }

        Item {
            id: field5
            anchors.right: parent.right
            anchors.rightMargin: 146
            anchors.left: parent.left
            anchors.leftMargin: 114
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 114
            anchors.top: parent.top
            anchors.topMargin: 131
        }

        Item {
            id: field6
            anchors.right: parent.right
            anchors.rightMargin: 40
            anchors.left: parent.left
            anchors.leftMargin: 220
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 114
            anchors.top: parent.top
            anchors.topMargin: 131
        }

        Item {
            id: field7
            anchors.right: parent.right
            anchors.rightMargin: 252
            anchors.left: parent.left
            anchors.leftMargin: 8
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 8
            anchors.top: parent.top
            anchors.topMargin: 237
        }

        Item {
            id: field8
            anchors.right: parent.right
            anchors.rightMargin: 146
            anchors.left: parent.left
            anchors.leftMargin: 114
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 8
            anchors.top: parent.top
            anchors.topMargin: 237
        }

        Item {
            id: field9
            anchors.right: parent.right
            anchors.rightMargin: 40
            anchors.left: parent.left
            anchors.leftMargin: 220
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 8
            anchors.top: parent.top
            anchors.topMargin: 237
        }
    }

    TextEdit {
        id: textEdit
        text: qsTr("Enter some text...")
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 20
        Rectangle {
            anchors.fill: parent
            anchors.margins: -10
            color: "transparent"
            border.width: 1
        }
    }
}
