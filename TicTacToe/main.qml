import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.0
import QtGraphicalEffects 1.0
import QtQuick.Dialogs 1.1

Window {
    id: window
    visible: true
    width: 340
    height: 400

    minimumWidth: width
    minimumHeight: height
    maximumWidth: width
    maximumHeight: height

    title: qsTr("Noughts and Crosses")
    property int turn: 0
    property variant arr: ["0", "1", "2", "3", "4", "5", "6", "7", "8"]

    function restart()
    {
        nought1.visible = false
        cross1.visible = false
        mouseArea1.enabled = true
        field1.color = "transparent"

        nought2.visible = false
        cross2.visible = false
        mouseArea2.enabled = true
        field2.color = "transparent"

        nought3.visible = false
        cross3.visible = false
        mouseArea3.enabled = true
        field3.color = "transparent"

        nought4.visible = false
        cross4.visible = false
        mouseArea4.enabled = true
        field4.color = "transparent"

        nought5.visible = false
        cross5.visible = false
        mouseArea5.enabled = true
        field5.color = "transparent"

        nought6.visible = false
        cross6.visible = false
        mouseArea6.enabled = true
        field6.color = "transparent"

        nought7.visible = false
        cross7.visible = false
        mouseArea7.enabled = true
        field7.color = "transparent"

        nought8.visible = false
        cross8.visible = false
        mouseArea8.enabled = true
        field8.color = "transparent"

        nought9.visible = false
        cross9.visible = false
        mouseArea9.enabled = true
        field9.color = "transparent"

        window.turn = 0

        for(var i = 0; i<9; i++)
            arr[i] = i

        turn_img(1)
    }

    function check(n)
    {
        if( (arr[0] == arr[1] && arr[1] == arr[2])
                || (arr[3] == arr[4] && arr[4] == arr[5])
                || (arr[6] == arr[7] && arr[7] == arr[8])
                || (arr[0] == arr[3] && arr[3] == arr[6])
                || (arr[1] == arr[4] && arr[4] == arr[7])
                || (arr[2] == arr[5] && arr[5] == arr[8])
                || (arr[0] == arr[4] && arr[4] == arr[8])
                || (arr[2] == arr[4] && arr[4] == arr[6]) )
        {
            change_color()
            question.winner = "WINNER - " + n.toUpperCase()
            question.open()
        }
        else if(window.turn == 8)
        {
            question.winner = "DRAW"
            question.open()
        }
        else
        {
            turn_img(window.turn)
        }
    }

    function change_color()
    {
        if (arr[0] == arr[1] && arr[1] == arr[2])
        {
            field1.color = "yellowgreen"
            field2.color = "yellowgreen"
            field3.color = "yellowgreen"
        }
        else if ( arr[3] == arr[4] && arr[4] == arr[5])
        {
            field4.color = "yellowgreen"
            field5.color = "yellowgreen"
            field6.color = "yellowgreen"
        }
        else if ( arr[6] == arr[7] && arr[7] == arr[8])
        {
            field7.color = "yellowgreen"
            field8.color = "yellowgreen"
            field9.color = "yellowgreen"
        }
        else if ( arr[0] == arr[3] && arr[3] == arr[6])
        {
            field1.color = "yellowgreen"
            field4.color = "yellowgreen"
            field7.color = "yellowgreen"
        }
        else if ( arr[1] == arr[4] && arr[4] == arr[7])
        {
            field2.color = "yellowgreen"
            field5.color = "yellowgreen"
            field8.color = "yellowgreen"
        }
        else if ( arr[2] == arr[5] && arr[5] == arr[8])
        {
            field3.color = "yellowgreen"
            field6.color = "yellowgreen"
            field9.color = "yellowgreen"
        }
        else if ( arr[0] == arr[4] && arr[4] == arr[8])
        {
            field1.color = "yellowgreen"
            field5.color = "yellowgreen"
            field9.color = "yellowgreen"
        }
        else if ( arr[2] == arr[4] && arr[4] == arr[6])
        {
            field3.color = "yellowgreen"
            field5.color = "yellowgreen"
            field7.color = "yellowgreen"
        }
    }

    function turn_img(n)
    {
        if(n %2)
        {
            nought.visible = false
            cross.visible = true

        }
        else
        {
            nought.visible = true
            cross.visible = false
        }
    }

    MessageDialog
    {
        id: question
        title: "END"
        icon: StandardIcon.Question
        property string winner: ""

        text: winner.toUpperCase() + "! \nDo you want to play again?"
        standardButtons: StandardButton.Yes | StandardButton.No
        Component.onCompleted: visible = false
        onYes: restart()
        onNo: Qt.quit()
    }

    Column
    {
        anchors.centerIn: parent
        spacing: 2

        Row
        {
            spacing: 2

            Rectangle
            {
                width: 242
                height: 50

                Text
                {
                    anchors.centerIn: parent
                    text: "CURRENT PLAYER: "
                    font.pointSize: 18
                    font.family: "Halvetica"
                }
            }

            Rectangle
            {
                width: 60
                height: 50

                Image
                {
                    id: nought
                    width: 30
                    height: 30
                    anchors.centerIn: parent
                    source: "images/nought.png"
                    visible: false
                }

                Image
                {
                    id: cross
                    width: 50
                    height: 50
                    anchors.centerIn: parent
                    source: "images/cross.png"
                    visible: true
                }
            }
        }

        Row
        {
            spacing: 2

            Rectangle
            {
                id: field1
                width: 100
                height: 100
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
                            arr[0] = "o"
                            check("o")
                        }
                        else
                        {
                            cross1.visible = true
                            arr[0] = "x"
                            check("x")
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
                    source: "images/nought.png"
                    visible: false
                }

                Image
                {
                    id: cross1
                    width: 100
                    height: 100
                    anchors.centerIn: parent
                    source: "images/cross.png"
                    visible: false
                }
            }


            Rectangle
            {
                id: field2
                width: 100
                height: 100
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
                            arr[1] = "o"
                            check("o")
                        }
                        else
                        {
                            cross2.visible = true
                            arr[1] = "x"
                            check("x")
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
                    source: "images/nought.png"
                    visible: false
                }

                Image
                {
                    id: cross2
                    width: 100
                    height: 100
                    anchors.centerIn: parent
                    source: "images/cross.png"
                    visible: false
                }
            }

            Rectangle
            {
                id: field3
                width: 100
                height: 100
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
                            arr[2] = "o"
                            check("o")
                        }
                        else
                        {
                            cross3.visible = true
                            arr[2] = "x"
                            check("x")
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
                    source: "images/nought.png"
                    visible: false
                }

                Image
                {
                    id: cross3
                    width: 100
                    height: 100
                    anchors.centerIn: parent
                    source: "images/cross.png"
                    visible: false
                }
            }

        }

        Row
        {
            spacing: 2

            Rectangle
            {
                id: field4
                width: 100
                height: 100
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
                            arr[3] = "o"
                            check("o")
                        }
                        else
                        {
                            cross4.visible = true
                            arr[3] = "x"
                            check("x")
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
                    source: "images/nought.png"
                    visible: false
                }

                Image
                {
                    id: cross4
                    width: 100
                    height: 100
                    anchors.centerIn: parent
                    source: "images/cross.png"
                    visible: false
                }
            }

            Rectangle
            {
                id: field5
                width: 100
                height: 100
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
                            arr[4] = "o"
                            check("o")
                        }
                        else
                        {
                            cross5.visible = true
                            arr[4] = "x"
                            check("x")
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
                    source: "images/nought.png"
                    visible: false
                }

                Image
                {
                    id: cross5
                    width: 100
                    height: 100
                    anchors.centerIn: parent
                    source: "images/cross.png"
                    visible: false
                }
            }

            Rectangle
            {
                id: field6
                width: 100
                height: 100
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
                            arr[5] = "o"
                            check("o")
                        }
                        else
                        {
                            cross6.visible = true
                            arr[5] = "x"
                            check("x")
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
                    source: "images/nought.png"
                    visible: false
                }

                Image
                {
                    id: cross6
                    width: 100
                    height: 100
                    anchors.centerIn: parent
                    source: "images/cross.png"
                    visible: false
                }
            }

        }

        Row
        {
            spacing: 2

            Rectangle
            {
                id: field7
                width: 100
                height: 100
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
                            arr[6] = "o"
                            check("o")
                        }
                        else
                        {
                            cross7.visible = true
                            arr[6] = "x"
                            check("x")
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
                    source: "images/nought.png"
                    visible: false
                }

                Image
                {
                    id: cross7
                    width: 100
                    height: 100
                    anchors.centerIn: parent
                    source: "images/cross.png"
                    visible: false
                }
            }

            Rectangle
            {
                id: field8
                width: 100
                height: 100
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
                            arr[7] = "o"
                            check("o")
                        }
                        else
                        {
                            cross8.visible = true
                            arr[7] = "x"
                            check("x")
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
                    source: "images/nought.png"
                    visible: false
                }

                Image
                {
                    id: cross8
                    width: 100
                    height: 100
                    anchors.centerIn: parent
                    source: "images/cross.png"
                    visible: false
                }
            }

            Rectangle
            {
                id: field9
                width: 100
                height: 100
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
                            arr[8] = "o"
                            check("o")
                        }
                        else
                        {
                            cross9.visible = true
                            arr[8] = "x"
                            check("x")
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
                    source: "images/nought.png"
                    visible: false
                }

                Image
                {
                    id: cross9
                    width: 100
                    height: 100
                    anchors.centerIn: parent
                    source: "images/cross.png"
                    visible: false
                }
            }

        }

        Button
        {
            width: 304
            height: 20
            text: "Restart"

            onClicked:
            {
                restart()
            }
        }
    }
}
