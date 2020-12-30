import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.12

// EMPTY SCENE

 App {

   NavigationStack {

     Page {
       id: page
       title: qsTr('التحيات')

       AppFlickable {
         anchors.fill: parent                // The AppFlickable fills the whole page
         contentWidth: contentColumn.width   // You need to define the size of your content item
         contentHeight: contentColumn.height


         // Using a Column as content item is very convenient
         // The height of the column is set automatically depending on the child items
         Column {
           id: contentColumn
           width: page.width // We only need to set the width of a column

           // We use a repeater to create 4 colored Rectangles

           Rectangle {
             color: "white"    // This will be "red", "green", ...
             width: parent.width
             height: dp(20)
           }
             Rectangle {
               color: "white"    // This will be "red", "green", ...
               width: parent.width
               height: dp(100)

               Column {
                 anchors.centerIn: parent
                 Rectangle {
                   color: "white"    // This will be "red", "green", ...
                   width: parent.width
                   height: dp(50)
                 }
                 AppButton {
                   anchors.horizontalCenter: parent.horizontalCenter
                   text: "استمع"
                   onClicked: {
                     audio.play()
                   }
                 }


               }
               Audio {
                   id : audio
                   source: "sounds/1.mp3"
               }



               Text{
               anchors.horizontalCenter: parent.horizontalCenter
               font.pixelSize: 40
               font.family: 'Andalus'
               color: 'black'
               text: "أهلا"
               }
             }
             Rectangle {
               color: "lightgrey"    // This will be "red", "green", ...
               width: parent.width
               height: dp(1)
             }
             Rectangle {
               color: "white"    // This will be "red", "green", ...
               width: parent.width
               height: dp(20)
             }
             Rectangle {
               color: "white"    // This will be "red", "green", ...
               width: parent.width
               height: dp(100)

               Column {
                 anchors.centerIn: parent
                 Rectangle {
                   color: "white"    // This will be "red", "green", ...
                   width: parent.width
                   height: dp(50)
                 }
                 AppButton {
                   anchors.horizontalCenter: parent.horizontalCenter
                   text: "استمع"
                   onClicked: {
                     audio2.play()
                   }
                 }

               }
               Audio {
                   id : audio2
                   source: "sounds/2.mp3"
               }

               Text{
               anchors.horizontalCenter: parent.horizontalCenter
               font.pixelSize: 40
               font.family: 'Andalus'
               color: 'black'
               text: "مرحبا"
               }
             }

             Rectangle {
               color: "lightgrey"    // This will be "red", "green", ...
               width: parent.width
               height: dp(1)
             }

             Rectangle {
               color: "white"    // This will be "red", "green", ...
               width: parent.width
               height: dp(20)
             }

             Rectangle {
               color: "white"    // This will be "red", "green", ...
               width: parent.width
               height: dp(100)

               Column {
                 anchors.centerIn: parent
                 Rectangle {
                   color: "white"    // This will be "red", "green", ...
                   width: parent.width
                   height: dp(50)
                 }
                 AppButton {
                   anchors.horizontalCenter: parent.horizontalCenter
                   text: "استمع"
                   onClicked: {
                     audio3.play()
                   }
                 }

               }
               Audio {
                   id : audio3
                   source: "sounds/3.mp3"
               }
               Text{
               anchors.horizontalCenter: parent.horizontalCenter
               font.pixelSize: 40
               font.family: 'Andalus'
               color: 'black'
               text: "صباح الخير"
               }
             }

             Rectangle {
               color: "lightgrey"    // This will be "red", "green", ...
               width: parent.width
               height: dp(1)
             }

             Rectangle {
               color: "white"    // This will be "red", "green", ...
               width: parent.width
               height: dp(20)
             }

             Rectangle {
               color: "white"    // This will be "red", "green", ...
               width: parent.width
               height: dp(100)

               Column {
                 anchors.centerIn: parent
                 Rectangle {
                   color: "white"    // This will be "red", "green", ...
                   width: parent.width
                   height: dp(50)
                 }
                 AppButton {
                   anchors.horizontalCenter: parent.horizontalCenter
                   text: "استمع"
                   onClicked: {
                     audio4.play()
                   }
                 }

               }
               Audio {
                   id : audio4
                   source: "sounds/4.mp3"
               }

               Text{
               anchors.horizontalCenter: parent.horizontalCenter
               font.pixelSize: 40
               font.family: 'Andalus'
               color: 'black'
               text: "مساء الخير"
               }
             }

             Rectangle {
               color: "lightgrey"    // This will be "red", "green", ...
               width: parent.width
               height: dp(1)
             }

             Rectangle {
               color: "white"    // This will be "red", "green", ...
               width: parent.width
               height: dp(20)
             }

             Rectangle {
               color: "white"    // This will be "red", "green", ...
               width: parent.width
               height: dp(100)

               Column {
                 anchors.centerIn: parent
                 Rectangle {
                   color: "white"    // This will be "red", "green", ...
                   width: parent.width
                   height: dp(50)
                 }
                 AppButton {
                   anchors.horizontalCenter: parent.horizontalCenter
                   text: "استمع"
                   onClicked: {
                     audio5.play()
                   }
                 }

               }
               Audio {
                   id : audio5
                   source: "sounds/5.mp3"
               }
               Text{
               anchors.horizontalCenter: parent.horizontalCenter
               font.pixelSize: 40
               font.family: 'Andalus'
               color: 'black'
               text: "من فضلك"
               }
             }

             Rectangle {
               color: "lightgrey"    // This will be "red", "green", ...
               width: parent.width
               height: dp(1)
             }

             Rectangle {
               color: "white"    // This will be "red", "green", ...
               width: parent.width
               height: dp(20)
             }

             Rectangle {
               color: "white"    // This will be "red", "green", ...
               width: parent.width
               height: dp(100)

               Column {
                 anchors.centerIn: parent
                 Rectangle {
                   color: "white"    // This will be "red", "green", ...
                   width: parent.width
                   height: dp(50)
                 }
                 AppButton {
                   anchors.horizontalCenter: parent.horizontalCenter
                   text: "استمع"
                   onClicked: {
                     audio6.play()
                   }
                 }

               }
               Audio {
                   id : audio6
                   source: "sounds/6.mp3"
               }
               Text{
               anchors.horizontalCenter: parent.horizontalCenter
               font.pixelSize: 40
               font.family: 'Andalus'
               color: 'black'
               text: "مع السلامة"
               }
             }

             Rectangle {
               color: "lightgrey"    // This will be "red", "green", ...
               width: parent.width
               height: dp(1)
             }

             Rectangle {
               color: "white"    // This will be "red", "green", ...
               width: parent.width
               height: dp(20)
             }

             Rectangle {
               color: "white"    // This will be "red", "green", ...
               width: parent.width
               height: dp(100)

               Column {
                 anchors.centerIn: parent
                 Rectangle {
                   color: "white"    // This will be "red", "green", ...
                   width: parent.width
                   height: dp(50)
                 }
                 AppButton {
                   anchors.horizontalCenter: parent.horizontalCenter
                   text: "استمع"
                   onClicked: {
                     audio7.play()
                   }
                 }

               }
               Audio {
                   id : audio7
                   source: "sounds/7.mp3"
               }
               Text{
               anchors.horizontalCenter: parent.horizontalCenter
               font.pixelSize: 40
               font.family: 'Andalus'
               color: 'black'
               text: "تشرفنا"
               }
             }

             Rectangle {
               color: "lightgrey"    // This will be "red", "green", ...
               width: parent.width
               height: dp(1)
             }

             Rectangle {
               color: "white"    // This will be "red", "green", ...
               width: parent.width
               height: dp(20)
             }

             Rectangle {
               color: "white"    // This will be "red", "green", ...
               width: parent.width
               height: dp(100)

               Column {
                 anchors.centerIn: parent
                 Rectangle {
                   color: "white"    // This will be "red", "green", ...
                   width: parent.width
                   height: dp(50)
                 }
                 AppButton {
                   anchors.horizontalCenter: parent.horizontalCenter
                   text: "استمع"
                   onClicked: {
                     audio8.play()
                   }
                 }

               }
               Audio {
                   id : audio8
                   source: "sounds/8.mp3"
               }
               Text{
               anchors.horizontalCenter: parent.horizontalCenter
               font.pixelSize: 40
               font.family: 'Andalus'
               color: 'black'
               text: "شكراً"
               }
             }

             Rectangle {
               color: "lightgrey"    // This will be "red", "green", ...
               width: parent.width
               height: dp(1)
             }

             Rectangle {
               color: "white"    // This will be "red", "green", ...
               width: parent.width
               height: dp(20)
             }

             Rectangle {
               color: "white"    // This will be "red", "green", ...
               width: parent.width
               height: dp(100)

               Column {
                 anchors.centerIn: parent
                 Rectangle {
                   color: "white"    // This will be "red", "green", ...
                   width: parent.width
                   height: dp(50)
                 }
                 AppButton {
                   anchors.horizontalCenter: parent.horizontalCenter
                   text: "استمع"
                   onClicked: {
                     audio9.play()
                   }
                 }

               }
               Audio {
                   id : audio9
                   source: "sounds/9.mp3"
               }
               Text{
               anchors.horizontalCenter: parent.horizontalCenter
               font.pixelSize: 40
               font.family: 'Andalus'
               color: 'black'
               text: "عفواً"
               }
             }

             Rectangle {
               color: "lightgrey"    // This will be "red", "green", ...
               width: parent.width
               height: dp(1)
             }

             Rectangle {
               color: "white"    // This will be "red", "green", ...
               width: parent.width
               height: dp(20)
             }

             Rectangle {
               color: "white"    // This will be "red", "green", ...
               width: parent.width
               height: dp(100)

               Column {
                 anchors.centerIn: parent
                 Rectangle {
                   color: "white"    // This will be "red", "green", ...
                   width: parent.width
                   height: dp(50)
                 }
                 AppButton {
                   anchors.horizontalCenter: parent.horizontalCenter
                   text: "استمع"
                   onClicked: {
                     audio10.play()
                   }
                 }

               }
               Audio {
                   id : audio10
                   source: "sounds/10.mp3"
               }
               Text{
               anchors.horizontalCenter: parent.horizontalCenter
               font.pixelSize: 40
               font.family: 'Andalus'
               color: 'black'
               text: "بكل سرور"
               }
             }

             Rectangle {
               color: "lightgrey"    // This will be "red", "green", ...
               width: parent.width
               height: dp(1)
             }


         }
       }
     }
   }
 }
