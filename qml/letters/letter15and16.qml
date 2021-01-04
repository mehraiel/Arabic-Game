import Felgo 3.0
import QtQuick 2.0
import QtMultimedia 5.12

Scene {
  id:lett1516
 Rectangle{
anchors.fill: parent.gameWindowAnchorItem
 color: "white"
 }
    Text {
        id: txt
        font.pixelSize: 30
        anchors.horizontalCenter: parent.horizontalCenter
        text: qsTr("هيا بنا نتعلم الحروف")
    }

 Rectangle {
       id: rectangle
     anchors.centerIn: parent
     color: "transparent"

     Image {
         id:img1
         anchors.verticalCenter: parent.verticalCenter
         anchors.left: rectangle.left
         anchors.leftMargin: 30

       width: 100
       height: 100
       source: "../letters/image/dad.jpg"
       Text {
           id:text
           text: "ض-ضاد"

              font.pointSize: 30
           anchors.bottom: img1.bottom
            anchors.bottomMargin: -75
          }
       AppButton {
           id:btn1
           text:" استمع للنطق "
           anchors.bottom: img1.bottom
           anchors.bottomMargin: -30
           radius: 60
           onClicked: sound.play()
      }
           SoundEffect{
           id:sound
           source: "./sounds/dadd.wav"
           loops: sound.Infinite



      }


     }

     Image {
         id:img2
         anchors.verticalCenter: parent.verticalCenter
         anchors.right: rectangle.right
         anchors.rightMargin: 30
       width: 100
       height: 100
       source: "../letters/image/tahh.jpg"


     Text {
         id:text1
         text: "ط-طاء"
            font.pointSize: 30
         anchors.bottom: img2.bottom
         anchors.bottomMargin: -75
     }
     AppButton {
         id:btn
         text:"استمع للنطق "
         anchors.bottom: img2.bottom
         anchors.bottomMargin: -30
         radius: 60
         onClicked: sound1.play()
}
         SoundEffect{
         id:sound1
         source: "./sounds/tA2ON.wav"
         loops: sound.Infinite



    }

        }

   }




   AppButton {
       id:btn3
     anchors.verticalCenter: parent.verticalCenter
     anchors.right: parent.right
     anchors.rightMargin: 10
     icon:IconType.arrowright
     iconSize: dp(50)
     flat: true

         onClicked: {
             var component = Qt.createComponent("letter17and18.qml")
             var window =component.createObject(gameWindow)
            scene.visiblefalse
             window.show

         }
           }
   NumberAnimation {
             running: true             // Start automatically
             loops: Animation.alwaysRunToEnd// Repeat endless (unless stopped)
             target: rectangle             // The animated item id
             property: "rotation"      // The animated property
             from: 0                   // Start value. If not defined, the current value is used
             to: 360                   // End value
             duration: 1000            // Duration of the animation
           }

   ColorAnimation {
             id: animation
             target: rectangle         // The animated item id
             property: "color"         // The animated property
             to: "#0000ff"             // Beautiful blue color
             duration: 1000            // Duration of the animation
     }


   }
