import QtQuick 2.12
import QtQuick.Window 2.12

import QtQuick.Controls 2.12

Window {
    id:root
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")


    function unHighlightAll(){
        btn1.highlighted = false
        btn2.highlighted = false
        btn3.highlighted = false
        btn4.highlighted = false
    }

    Column{
        id:col
        width: parent.width / 5
        anchors{
            right: parent.right
            top:parent.top
            bottom: parent.bottom
            left:undefined
        }

        Button{
            id:btn1
            text: "btn1"
            width: parent.width
            onClicked: {
                drawer.open()
                unHighlightAll()
                highlighted = true
            }
        }

        Button{
            id:btn2
            text: "btn2"
            width: parent.width
            onClicked: {
                unHighlightAll()
                drawer.open()
                highlighted = true
            }
        }

        Button{
            id:btn3
            text: "btn3"
            width: parent.width
            onClicked: {
                unHighlightAll()
                drawer.open()
                highlighted = true
            }
        }

        Button{
            id:btn4
            text: "btn4"
            width: parent.width
            onClicked: {
                unHighlightAll()
                drawer.open()
                highlighted = true
            }
        }
    }

    Drawer{
        id: drawer
        height:root.height
        width: root.width * 4 / 5
        background: Rectangle {
            Rectangle {
                width: parent.width
                height: parent.height
                color: "black"
            }
        }
    }
}
