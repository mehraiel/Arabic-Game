import Felgo 3.0
import QtQuick 2.0

GameWindow {
    id: gameWindow

    screenWidth: 960
    screenHeight: 640


    Scene {
        id: scene

        Rectangle{
        anchors.fill: parent.gameWindowAnchorItem
        color:"#ffffee"

        //Image {
          //  id: background
            //source: "../assets/اللغة-العربية.jpg"
          //}


        Text{
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 30
        color: '#880000'
        text: "تعليم اللغه العربيه"
        }


        Column{
            anchors.centerIn: parent
            spacing: 10



        Row{
            spacing: 50


        GameButton{
            text: "الحروف"
            onClicked: {

            var component = Qt.createComponent("letters/letter.qml");
                var window = component.createObject(gameWindow);
                scene.visible=false
                window.show
            }

        }


        GameButton{
            text: "العائله"
            onClicked: {

            var component = Qt.createComponent("family/family.qml");
                var window = component.createObject(gameWindow);
                scene.visible=false
                window.show
            }

        }

        }


        Row{
            spacing: 50

        GameButton{
            text: "التحيات"
            onClicked: {

            var component = Qt.createComponent("greetings/greeting.qml");
                var window = component.createObject(gameWindow);
                scene.visible=false
                window.show
            }

        }


        GameButton{
            text: "التدريب"
            onClicked: {

            var component = Qt.createComponent("tasks/tasks.qml");
                var window = component.createObject(gameWindow);
                scene.visible=false
                window.show
            }

        }

        }


        Row{
            spacing: 50


        GameButton{
            text: "الخروج"

            onClicked: Qt.quit()


        }

        }


        }




        }





     }
}
