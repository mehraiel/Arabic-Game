import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.12
import QtQuick.Controls 2.12

Scene {
    id: destination

    Rectangle{
        id: rect_background
        anchors.fill: parent
        color:"#ffffff"

        /*Column is a type that positions its child items along a single column.
         It can be used as a convenient way to vertically position a series of items without using anchors.
         Our items in column : Brogress Bar,text(Head of question),image has icon with sound effect, and  3 Game Button within row
       */
        Column{
            id: task_content
            spacing: 15
            anchors.centerIn: parent


            Row{
                spacing: 10
                //ProgressBar consists of two visual items: background and content item.
                ProgressBar {
                    id: control
                    value: 1  //This property holds the progress value. The default value is 0.0.
                    padding: 2
                    background: Rectangle {
                        implicitWidth: 200
                        implicitHeight: 6
                        color: "#e6e6e6"
                        radius: 2
                    }

                    contentItem: Item {
                        implicitWidth: 200
                        implicitHeight: 4

                        Rectangle {
                            width: control.visualPosition * parent.width
                            height: parent.height
                            radius: 2
                            color: "#32cb00"
                        }
                    }
                }

                Image {
                    id: heart_icon
                    source: "../tasks/images/like.png"
                    width: 30
                    height: 30
                }
                Text {
                    id: questions_number
                    text: "5"
                    color: "red"
                }
            }

                Rectangle {
                  id: dialog_rect
                  width: 230
                  height: 30
                  radius: 5
                  border.color: "black"
                  Text{
                    text: "تهانينا! لقد نجحت في جميع الاسئله."
                    color: "black"
                    anchors.centerIn: parent.Center
                    anchors.right: parent.right
                    anchors.rightMargin: 10
                    anchors.topMargin: 50
                  }

                }

        }
    }

    AppButton{
         text: "عد الي الصفحه الرئيسيه"
         fontBold: true
         textColor: "black"
         backgroundColor: "#32cb00"
         dropShadow: true  //if button is enabled
         radius: 10
         width: 300
         height: 25
         anchors.bottom: rect_background.bottom
         anchors.horizontalCenter: rect_background.horizontalCenter
         anchors.bottomMargin: 20
         onClicked: {

                     var component = Qt.createComponent("../Main.qml");
                         var window = component.createObject(gameWindow);
                         question1.visible=false
                         window.show

                    }
    }
}
