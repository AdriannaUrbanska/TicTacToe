import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.0

Window {
    id: window
    visible: true
    width: 300
    height: 320
    title: qsTr("Noughts and Crosses")
    property int turn: 0

    Rectangle
    {
        id: field1
        width: 100
        height: 100
        x: 0
        y: 0
        color: "transparent"
        border.width: 3
        border.color: "black"

        MouseArea
        {
            id: mouseArea1
            anchors.fill: parent
            onClicked:
            {
                if(window.turn % 2)
                {
                   nought1.visible = true
                }
                else
                {
                    cross1.visible = true
                }

                window.turn = window.turn + 1
                mouseArea1.enabled = false
            }
        }

        Image
        {
            id: nought1
            width: 70
            height: 70
            anchors.centerIn: parent
            source: "nought.png"
            visible: false
        }

        Image
        {
            id: cross1
            width: 100
            height: 100
            anchors.centerIn: parent
            source: "cross.png"
            visible: false
        }
    }

    Rectangle
    {
        id: field2
        width: 100
        height: 100
        x: 100
        y: 0
        color: "transparent"
        border.width: 3
        border.color: "black"

        MouseArea
        {
            id: mouseArea2
            anchors.fill: parent
            onClicked:
            {
                if(window.turn % 2)
                {
                   nought2.visible = true
                }
                else
                {
                    cross2.visible = true
                }

                window.turn = window.turn + 1
                mouseArea2.enabled = false
            }
        }

        Image
        {
            id: nought2
            width: 70
            height: 70
            anchors.centerIn: parent
            source: "nought.png"
            visible: false
        }

        Image
        {
            id: cross2
            width: 100
            height: 100
            anchors.centerIn: parent
            source: "cross.png"
            visible: false
        }
    }

    Rectangle
    {
        id: field3
        width: 100
        height: 100
        x: 200
        y: 0
        color: "transparent"
        border.width: 3
        border.color: "black"

        MouseArea
        {
            id: mouseArea3
            anchors.fill: parent
            onClicked:
            {
                if(window.turn % 2)
                {
                   nought3.visible = true
                }
                else
                {
                    cross3.visible = true
                }

                window.turn = window.turn + 1
                mouseArea3.enabled = false
            }
        }

        Image
        {
            id: nought3
            width: 70
            height: 70
            anchors.centerIn: parent
            source: "nought.png"
            visible: false
        }

        Image
        {
            id: cross3
            width: 100
            height: 100
            anchors.centerIn: parent
            source: "cross.png"
            visible: false
        }
    }

    Rectangle
    {
        id: field4
        width: 100
        height: 100
        x: 0
        y: 100
        color: "transparent"
        border.width: 3
        border.color: "black"

        MouseArea
        {
            id: mouseArea4
            anchors.fill: parent
            onClicked:
            {
                if(window.turn % 2)
                {
                   nought4.visible = true
                }
                else
                {
                    cross4.visible = true
                }

                window.turn = window.turn + 1
                mouseArea4.enabled = false
            }
        }

        Image
        {
            id: nought4
            width: 70
            height: 70
            anchors.centerIn: parent
            source: "nought.png"
            visible: false
        }

        Image
        {
            id: cross4
            width: 100
            height: 100
            anchors.centerIn: parent
            source: "cross.png"
            visible: false
        }
    }

    Rectangle
    {
        id: field5
        width: 100
        height: 100
        x: 100
        y: 100
        color: "transparent"
        border.width: 3
        border.color: "black"

        MouseArea
        {
            id: mouseArea5
            anchors.fill: parent
            onClicked:
            {
                if(window.turn % 2)
                {
                   nought5.visible = true
                }
                else
                {
                    cross5.visible = true
                }

                window.turn = window.turn + 1
                mouseArea5.enabled = false
            }
        }

        Image
        {
            id: nought5
            width: 70
            height: 70
            anchors.centerIn: parent
            source: "nought.png"
            visible: false
        }

        Image
        {
            id: cross5
            width: 100
            height: 100
            anchors.centerIn: parent
            source: "cross.png"
            visible: false
        }
    }

    Rectangle
    {
        id: field6
        width: 100
        height: 100
        x: 200
        y: 100
        color: "transparent"
        border.width: 3
        border.color: "black"

        MouseArea
        {
            id: mouseArea6
            anchors.fill: parent
            onClicked:
            {
                if(window.turn % 2)
                {
                   nought6.visible = true
                }
                else
                {
                    cross6.visible = true
                }

                window.turn = window.turn + 1
                mouseArea6.enabled = false
            }
        }

        Image
        {
            id: nought6
            width: 70
            height: 70
            anchors.centerIn: parent
            source: "nought.png"
            visible: false
        }

        Image
        {
            id: cross6
            width: 100
            height: 100
            anchors.centerIn: parent
            source: "cross.png"
            visible: false
        }
    }

    Rectangle
    {
        id: field7
        width: 100
        height: 100
        x: 0
        y: 200
        color: "transparent"
        border.width: 3
        border.color: "black"

        MouseArea
        {
            id: mouseArea7
            anchors.fill: parent
            onClicked:
            {
                if(window.turn % 2)
                {
                   nought7.visible = true
                }
                else
                {
                    cross7.visible = true
                }

                window.turn = window.turn + 1
                mouseArea7.enabled = false
            }
        }

        Image
        {
            id: nought7
            width: 70
            height: 70
            anchors.centerIn: parent
            source: "nought.png"
            visible: false
        }

        Image
        {
            id: cross7
            width: 100
            height: 100
            anchors.centerIn: parent
            source: "cross.png"
            visible: false
        }
    }

    Rectangle
    {
        id: field8
        width: 100
        height: 100
        x: 100
        y: 200
        color: "transparent"
        border.width: 3
        border.color: "black"

        MouseArea
        {
            id: mouseArea8
            anchors.fill: parent
            onClicked:
            {
                if(window.turn % 2)
                {
                   nought8.visible = true
                }
                else
                {
                    cross8.visible = true
                }

                window.turn = window.turn + 1
                mouseArea8.enabled = false
            }
        }

        Image
        {
            id: nought8
            width: 70
            height: 70
            anchors.centerIn: parent
            source: "nought.png"
            visible: false
        }

        Image
        {
            id: cross8
            width: 100
            height: 100
            anchors.centerIn: parent
            source: "cross.png"
            visible: false
        }
    }

    Rectangle
    {
        id: field9
        width: 100
        height: 100
        x: 200
        y: 200
        color: "transparent"
        border.width: 3
        border.color: "black"

        MouseArea
        {
            id: mouseArea9
            anchors.fill: parent
            onClicked:
            {
                if(window.turn % 2)
                {
                   nought9.visible = true
                }
                else
                {
                    cross9.visible = true
                }

                window.turn = window.turn + 1
                mouseArea9.enabled = false
            }
        }

        Image
        {
            id: nought9
            width: 70
            height: 70
            anchors.centerIn: parent
            source: "nought.png"
            visible: false
        }

        Image
        {
            id: cross9
            width: 100
            height: 100
            anchors.centerIn: parent
            source: "cross.png"
            visible: false
        }
    }

    Button
    {
        width: 300
        height: 20
        x: 0
        y: 300
        text: "Restart"

        onClicked: {

            nought1.visible = false
            cross1.visible = false
            mouseArea1.enabled = true

            nought2.visible = false
            cross2.visible = false
            mouseArea2.enabled = true

            nought3.visible = false
            cross3.visible = false
            mouseArea3.enabled = true

            nought4.visible = false
            cross4.visible = false
            mouseArea4.enabled = true

            nought5.visible = false
            cross5.visible = false
            mouseArea5.enabled = true

            nought6.visible = false
            cross6.visible = false
            mouseArea6.enabled = true

            nought7.visible = false
            cross7.visible = false
            mouseArea7.enabled = true

            nought8.visible = false
            cross8.visible = false
            mouseArea8.enabled = true

            nought9.visible = false
            cross9.visible = false
            mouseArea9.enabled = true
        }
    }
}
