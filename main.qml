import QtQuick 2.4
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
                id:txtMq4
                text:"Methane / CNG Gas"
                anchors.bottom: parent.bottom
                anchors.left:  parent.left
                color : "white"
                font.pixelSize: 20
            }
            Text{
                id:txtMq5
                text:" Natural gas / LPG"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 20
                color : "white"
            }
            Text{
                id:txtMq9
                text:" Carbon Monoxide \n flammable gasses"
                anchors.bottom: parent.bottom
                anchors.right:  parent.right

                color : "white"
                font.pixelSize: 20
            }

            Rectangle{
                id : rectmq9
                color : "yellow"
                //anchors.centerIn:  parent
                anchors.horizontalCenter: txtMq9.horizontalCenter
                anchors.bottom:  txtMq9.top
                width: parent.width / 5;
                height :  parent.height / 4;
                radius : 3

                Behavior  on height {
                    NumberAnimation{
                        duration: 1000
                        easing.type:  Easing.OutCubic;
                    }// end NumberAnimation
                } // end Behavior
            }
            Rectangle{
                id : rectmq5
                color : "Blue"
                //anchors.centerIn:  parent
                anchors.horizontalCenter: txtMq5.horizontalCenter
                anchors.bottom: txtMq5.top
                width: parent.width / 5
                height :  parent.height / 3
                radius: 3
                Behavior  on height {
                    NumberAnimation{
                        duration: 1000
                        easing.type:  Easing.OutCubic;
                    }// end NumberAnimation
                } // end Behavior
            }

        }// end Frame
    }//  end mainItem
} // end ApplicationWindow
