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

//        Image {
//            id: background
//            source: "../images/اللغة-العربية.jpg"
//          }


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
            spacing: 100



        GameButton{

            onClicked: {

            var component = Qt.createComponent("letters/letter.qml");
                var window = component.createObject(gameWindow);
                scene.visible=false
                window.show
            }

            Image {
                id: name1
                source: "../images/letters.jpg"

                 width:40
                 height: 40
              }

        }

         GameButton{

             onClicked:{
                 var component = Qt.createComponent("family/Scene.qml");
                 var window = component.createObject(gameWindow);
                 scene.visible=false
                 window.show
             }

             Image {
                 id: name2
                 source: "../images/family.jpg"

                  width:40
                  height: 40
               }
         }


        }


        Row{
            spacing: 70



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
             onClicked:{
                 var component = Qt.createComponent("family/Scene.qml");
                 var window = component.createObject(gameWindow);
                 scene.visible=false
                 window.show
             }


         }


        }

        Row{
            spacing: 100


        GameButton{

            onClicked: {

            var component = Qt.createComponent("greetings/greeting.qml");
                var window = component.createObject(gameWindow);
                scene.visible=false
                window.show
            }

            Image {
                id: name3
                source: "../images/greeting.jpg"

                 width:40
                 height: 40
              }

        }


        GameButton{

            onClicked: {

            var component = Qt.createComponent("tasks/Task2.qml");
                var window = component.createObject(gameWindow);
                scene.visible=false
                window.show
            }


            Image {
                id: name4
                source: "../images/tasks.jpg"

                 width:40
                 height: 40
              }


        }


        }





        Row{
            spacing: 70


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

            var component = Qt.createComponent("tasks/Task2.qml");
                var window = component.createObject(gameWindow);
                scene.visible=false
                window.show
            }




        }


        }


        Row{
            spacing: 70



        GameButton{
            text: "الخروج"

            onClicked: Qt.quit()


        }


        }


        }

}

     }
}












