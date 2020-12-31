import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.12
Scene {
    id: question1
    Rectangle{
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

            Text{
              text: "اضغط علي الصوره وأختر الجواب الصحيح:"
            }


            AppButton{
                id: rect_grandfather
                width: 200
                height: 200
                backgroundColor: "transparent"

                Image {
                        id: grandfather
                        anchors.fill: rect_grandfather
                        source: "../tasks/images/welcome3.png"
                }

                onClicked: image_sound.play()
            }

            Row{
                id: selected_buttons
                spacing: 10
                AppButton{
                    text: "مرحبا"
                    fontBold: true
                    textColor: "black"
                    backgroundColor: "white"
                    dropShadow: true  //if button is enabled
                    radius: 30
                    backgroundColorPressed: "green"
                    onClicked: {
                        correct_sound.play()
                        if(!correct_rect.visible){
                            correct_rect.visible = true
                        }
                    }
                }
                AppButton{
                     text: "عفوا"
                     fontBold: true
                     textColor: "black"
                     backgroundColor: "white"
                     dropShadow: true  //if button is enabled
                     radius: 30
                     backgroundColorPressed: "red"
                     onClicked: {
                         wrong_sound.play() //Sets the playing property to true.
                         if(!wrong_rect.visible){
                             wrong_rect.visible = true //if pressed in button wrong rectangle will be visible
                         }
                     }

                }
                AppButton{
                     text: "من فضلك"
                     fontBold: true
                     textColor: "black"
                     backgroundColor: "white"
                     dropShadow: true  //if button is enabled
                     radius: 30
                     backgroundColorPressed: "red"
                     onClicked: {
                         wrong_sound.play() //Sets the playing property to true.
                         if(!wrong_rect.visible){
                             wrong_rect.visible = true //if pressed in button wrong rectangle will be visible
                         }
                     }

                }
            }

        }

    }

    SoundEffect {
        id : image_sound
        source: "../tasks/sounds/Welcome_Sound.wav"
    }

    SoundEffect {
        id : wrong_sound
        source: "../tasks/sounds/Wrong_Answer.wav"
    }
    SoundEffect {
        id : correct_sound
        source: "../tasks/sounds/Correct_answer.wav"
    }

    Rectangle{
        id: wrong_rect
        visible: false
        anchors.bottom: parent.bottom
        color: "#ff867c"
        width: parent.width
        height: 50
        anchors.top: selected_buttons.bottom
      Text {
            text: "حاول مره اخري."
            color: "red"
            anchors.right: wrong_rect.right
            anchors.rightMargin: 15
        }
      AppButton{
           text: "استمر"
           fontBold: true
           textColor: "white"
           backgroundColor: "red"
           dropShadow: true  //if button is enabled
           radius: 10
           width: 200
           height: 25
           anchors.horizontalCenter: parent.horizontalCenter
           anchors.verticalCenter: parent.verticalCenter
           onClicked: {
              wrong_rect.visible = false
           }
      }
    }

    Rectangle
    {
        id: correct_rect
        visible: false
        anchors.bottom: parent.bottom
        color: "#b0ff57"
        width: parent.width
        height: 50
        anchors.top: selected_buttons.bottom
      Text {
            text: "اجابه صحيحه."
            color: "green"
            anchors.right: correct_rect.right
            anchors.rightMargin: 15
        }
      AppButton{
           text: "استمر"
           fontBold: true
           textColor: "white"
           backgroundColor: "green"
           dropShadow: true  //if button is enabled
           radius: 10
           width: 200
           height: 25
           anchors.horizontalCenter: parent.horizontalCenter
           anchors.verticalCenter: parent.verticalCenter
           onClicked: {

                       var component = Qt.createComponent("Task7.qml");
                           var window = component.createObject(gameWindow);
                           question1.visible=false
                           window.show

                      }
      }
    }

}
