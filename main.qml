import QtQuick 2.3
import QtQuick.Controls 1.2

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

   Item{
       id:mainItem
       width: parent.width
       height: parent.height

       Rectangle{
           id:frame
           anchors.right: parent.right
           height: parent.height
           width: parent.width / 5 * 4
           color : "black"

           Text{
                id:mq4
                text:"Methane / CNG Gas"
                anchors.bottom: parent.bottom
                anchors.left:  parent.left
                color : "white"
                font.pixelSize: 20
           }
           Text{
                id:mq5
                text:" Natural gas / LPG"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 20
                color : "white"
           }
           Text{
                id:mq9
                text:" Carbon Monoxide \n flammable gasses"
                anchors.bottom: parent.bottom
                anchors.right:  parent.right
                color : "white"
                font.pixelSize: 20
           }
       }
   }
}
