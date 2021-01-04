import Felgo 3.0
import QtQuick 2.0
import QtMultimedia 5.12
Scene {
  id:scen1
 Rectangle{
anchors.fill: parent.gameWindowAnchorItem
 color: "white"
 }
    Text {
        id: txt
        font.pixelSize: 50
        font.family: "Arabic Typesetting"
        anchors.horizontalCenter: parent.horizontalCenter
        text: qsTr("هيا نتعلم اسماء العائلة")
    }
        ////button back to menu page

    GameButton{
          text: "الرجوع"
          onClicked: {
              var component = Qt.createComponent("../Main.qml");
              var window = component.createObject(gameWindow);
               scen1.visible=false
              window.show
          }
      }

    ///////make rectangle to contain 2image and text

 Rectangle {
       id: rectangle
     anchors.centerIn: parent

     Image {
         id:img1
         anchors.verticalCenter: parent.verticalCenter
         anchors.left: rectangle.left
         anchors.leftMargin: 30

       width: 100
       height: 100
       source: "../images/gma.jpg"
       Text {
           id:text
           text: "جدتي"
           font.family: "Aref Ruqaa"
              font.pointSize: 20
           anchors.bottom: img1.bottom
            anchors.bottomMargin: -80
          }
       AppButton {
           id:btn1
           text:"اقرأ الكلمة"
           anchors.bottom: img1.bottom
           anchors.bottomMargin: -40
           radius: 60
           onClicked: sound.play()

           SoundEffect{
           id:sound
           source: "./New folder/جدتي.wav"
           loops: sound.Infinite



      }

      }
     }

     Image {
         id:img2
         anchors.verticalCenter: parent.verticalCenter
         anchors.right: rectangle.right
         anchors.rightMargin: 30
       width: 100
       height: 100
       source: "../images/gpa.jpg"


     Text {
         id:text1
         text:"جدي"
         font.family: "Aref Ruqaa"
         font.pointSize: 20
         anchors.bottom: img2.bottom
         anchors.bottomMargin: -75
         anchors.left: img2.left

         anchors.leftMargin:- 20

     }

     AppButton {
         id:btn2
         text:"اقرأ الكلمة"
         anchors.bottom: img2.bottom
         anchors.bottomMargin: -30
         radius: 60
         onClicked: sound.play()
}
         SoundEffect{
         id:sound2
         source: "./New folder/جدي[1].wav"
         loops: sound.Infinite

    }
        }

   }

 /////arrow to back to previous page

  AppButton {
      id:btn3
     anchors.verticalCenter: parent.verticalCenter
     anchors.right: rectangle.left
     anchors.rightMargin: 100
     icon:IconType.arrowleft
     iconSize: dp(50)
     flat:true
     onClicked: {
         var component = Qt.createComponent("Scene3.qml")
         var window =component.createObject(gameWindow)
        scen1.visiblefalse
         window.show

     }
   }
   ////animation on images and text
  NumberAnimation {
         running: true             // Start automatically
         loops: Animation.alwaysRunToEnd // Repeat to end
         target: rectangle             // The animated item id
         property: "rotation"      // The animated property
         from: 0                   // Start value. If not defined, the current value is used
         to: 360                   // End value
         duration: 1000            // Duration of the animation
       }
}
