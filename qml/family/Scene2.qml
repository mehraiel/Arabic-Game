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
        font.pixelSize: 30
        anchors.horizontalCenter: parent.horizontalCenter
        text: qsTr("هيا نتعلم اسماء العائلة")
    }




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
       source: "../images/brother.jpg"
       Text {
           id:text
           text: "أخي"

              font.pointSize: 30
           anchors.bottom: img1.bottom
            anchors.bottomMargin: -75
          }
       AppButton {
           id:btn
           text:"اقرأ الكلمة"
           anchors.bottom: img1.bottom
           anchors.bottomMargin: -30
           radius: 60
           onClicked: sound1.play()
  }
           SoundEffect{
           id:sound1
           source: "./New folder/اخي.wav"
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
       source: "../images/sister.jpg"


     Text {
         id:text1
         text: "أختي"
         color: "black"
            font.pointSize: 30
         anchors.bottom: img2.bottom
         anchors.bottomMargin: -75
     }

     AppButton {
         id:btn1
         text:"اقرأ الكلمة"
         anchors.horizontalCenter: parent.horizontalCenter
         anchors.bottom: img2.bottom
         anchors.bottomMargin: -30
         radius: 60
         onClicked: sound.play()
    }
         SoundEffect{
         id:sound
         source: "./New folder/اختي.wav"
         loops: sound.Infinite

    }


   }

}

  AppButton {
      id:btn2
     anchors.verticalCenter: parent.verticalCenter
     anchors.right: rectangle.left
     anchors.rightMargin: 200
     icon:IconType.arrowleft
     iconSize: dp(50)
     flat:true
     onClicked: {
         var component = Qt.createComponent("Scene.qml")
         var window =component.createObject(app)
        scene1.visiblefalse
         window.show

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
        var component = Qt.createComponent("Scene3.qml")
        var window =component.createObject(gameWindow)
       scene.visiblefalse
        window.show

    }


  }
  NumberAnimation {
         running: true             // Start automatically
         loops: Animation.alwaysRunToEnd // Repeat endless (unless stopped)
         target: rectangle             // The animated item id
         property: "rotation"      // The animated property
         from: 0                   // Start value. If not defined, the current value is used
         to: 360                   // End value
         duration: 1000            // Duration of the animation
       }
}
