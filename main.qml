import QtQuick 2.7
import QtQuick.Window 2.2
//import QtQuick.Controls 2.0
//import QtQuick3D 1.15
import QtQuick.Layouts 1.11
import QtGraphicalEffects 1.0
import QtQuick.Extras 1.4
import QtQuick.Controls 2.15
import QtQuick.Controls.Styles 1.4

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Wifi Connections")
    color: "black"
//    LinearGradient {
//            anchors.fill: parent
//            start: Qt.point(0, 0)
//            end: Qt.point(0, 300)
////            gradient: Gradient {
////                GradientStop { position: 0.0; color: "white" }
////                GradientStop { position: 1.0; color: "black" }
////                GradientStop { position: 0.0; color: "red" }
////                GradientStop { position: 0.33; color: "yellow" }
////                GradientStop { position: 1.0; color: "green" }
////            }
//        }

    Row {
        id: row
        x: 0
        width: parent.width
        height: 80
        anchors.top: parent.top
        anchors.topMargin: 0
    }

    Row {
        id: row1
        width: parent.width
        height: window.height-80
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0

        Column {
            id: column
            width: parent.width/3
            height: 400
            spacing: 30

            Label {
                id: label
                text: qsTr("Wifi Name :")
                topPadding: 5
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 18
                color: "#21be2b"
            }

            Label {
                id: label1
                text: qsTr("Password : ")
                topPadding: 5
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 18
                color: "#21be2b"
            }

            Text {
                id: text1
                color: "#fb0404"
                text: qsTr("Not Connected to Internet")
                minimumPixelSize: 12
                fontSizeMode: Text.FixedSize
                font.pointSize: 15
            }



        }

        Column {
            id: column1
            width: parent.width/3
            height: 400
            spacing: 30

            ComboBox {
                id: comboBox
                width: parent.width
                editable: true
                padding: 0
                currentIndex: 1
                displayText: "Select Wifi"
                textRole: "Select Wifi Name"
                font.pointSize: 18
//                background: Component {
//                        color: "black"
//                        border.width: parent.width //&& parent.activeFocus ? 2 : 1
//                        border.color: parent.height //&& parent.activeFocus ? comboBoxCustom.palette.highlight : comboBoxCustom.palette.button
//                    }
                model: ListModel {
                        id: model
                        ListElement { text: "Banana" }
                        ListElement { text: "Apple" }
                        ListElement { text: "Coconut" }
                    }

                onAccepted: {
                         if (find(editText) === -1)
                             model.append({text: editText})
                     }
            }

            TextEdit {
                id: textEdit
                width: parent.width
                height: 40
                text: qsTr("Enter Password")
                font.pointSize: 18
            }
        }

        Column {
            id: column2
            width: parent.width/3
            height: 400
            spacing: 30


            Button {
                id: button1
                text: qsTr("Scan")
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter


                contentItem: Text {
                    text: button1.text
                    font: button1.font
                    opacity: enabled ? 1.0 : 0.3
                    color: button1.down ? "#98FB98" : "#21be2b"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }


                Rectangle {
                    id: background1
                    anchors.fill: parent
                    color: "black"
                }

                RectangularGlow {
                    id: effect1
                    anchors.fill: rect1
                    glowRadius: 2
                    spread: 0.5
                    color: "white"
                    cornerRadius: rect1.radius + glowRadius
                }

                Rectangle {
                    id: rect1
                    color: "black"
                    anchors.centerIn: parent
                    radius: 20
                    implicitWidth: 100
                    implicitHeight: 40
                    opacity: enabled ? 1 : 0.3
                    border.color: button1.down ? "#98FB98" : "#006400"
                    border.width: 1

                }



            }




            Button {
                id: button2
                text: qsTr("Connect")
                anchors.horizontalCenter: parent.horizontalCenter
                font.bold: true

                contentItem: Text {
                    text: button2.text
                    font: button2.font
                    opacity: enabled ? 1.0 : 0.3
                    color: button2.down ? "#98FB98" : "#21be2b"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }


                Rectangle {
                    id: background2
                    anchors.fill: parent
                    color: "black"
                }

                RectangularGlow {
                    id: effect2
                    anchors.fill: rect2
                    glowRadius: 2
                    spread: 0.5
                    color: "white"
                    cornerRadius: rect2.radius + glowRadius
                }

                Rectangle {
                    id: rect2
                    color: "black"
                    anchors.centerIn: parent
                    radius: 20
                    implicitWidth: 100
                    implicitHeight: 40
                    opacity: enabled ? 1 : 0.3
                    border.color: button2.down ? "#98FB98" : "#006400"
                    border.width: 1

                }

            }



            Button {
                id: button3
                text: qsTr("Disconnect")
                anchors.horizontalCenter: parent.horizontalCenter
                font.bold: true

                contentItem: Text {
                    font: button3.font
                    opacity: enabled ? 1.0 : 0.3
                    color: button3.down ? "#98FB98" : "#21be2b"
                    text: "Disconnect"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }

                Rectangle {
                    id: background3
                    anchors.fill: parent
                    color: "black"
                }

                RectangularGlow {
                    id: effect3
                    anchors.fill: rect3
                    glowRadius: 2
                    spread: 0.5
                    color: "white"
                    cornerRadius: rect3.radius + glowRadius
                }

                Rectangle {
                    id: rect3
                    color: "black"
                    anchors.centerIn: parent
                    radius: 20
                    implicitWidth: 100
                    implicitHeight: 40
                    opacity: enabled ? 1 : 0.3
                    border.color: button3.down ? "#98FB98" : "#006400"
                    border.width: 1

                }
            }

            DelayButton {
                id: delayButton
                text: qsTr("Reboot")
                anchors.horizontalCenter: parent.horizontalCenter
                font.bold: true

                contentItem: Text {
                      font: delayButton.font
                      color: delayButton.down ? "#98FB98" : "#21be2b"//"#f6f6f6"// : "#21be2b"
                      text: delayButton.text
                      horizontalAlignment: Text.AlignHCenter
                      verticalAlignment: Text.AlignVCenter
                      elide: Text.ElideRight
                }
                Rectangle {
                    id: backgrounddelay
                    anchors.fill: parent
                    color: "black"
                }
                RectangularGlow {
                    id: effectdelay
                    anchors.fill: rectdelay
                    glowRadius: 2
                    spread: 0.5
                    color: "white"
                    cornerRadius: rectdelay.radius + glowRadius
                }

                Rectangle {
                    id: rectdelay
                    color: "black"
                    anchors.centerIn: parent
                    radius: 20
                    implicitWidth: 100
                    implicitHeight: 40
                    opacity: enabled ? 1 : 0.3
                    border.color: delayButton.down ? "#98FB98" : "#006400"
                    border.width: 1


                }
            }

            DelayButton {
                id: delayButton1
                text: qsTr("PowerOFF")
                anchors.horizontalCenter: parent.horizontalCenter
                font.bold: true

                contentItem: Text {
                      font: delayButton1.font
                      color: delayButton1.down ? "#98FB98" : "#21be2b"//"#f6f6f6"// : "#21be2b"
                      text: delayButton1.text
                      horizontalAlignment: Text.AlignHCenter
                      verticalAlignment: Text.AlignVCenter
                      elide: Text.ElideRight
                }
                Rectangle {
                    id: backgrounddelay1
                    anchors.fill: parent
                    color: "black"
                }
                RectangularGlow {
                    id: effectdelay1
                    anchors.fill: rectdelay1
                    glowRadius: 2
                    spread: 0.5
                    color: "white"
                    cornerRadius: rectdelay1.radius + glowRadius
                }

                Rectangle {
                    id: rectdelay1
                    color: "black"
                    anchors.centerIn: parent
                    radius: 20
                    implicitWidth: 100
                    implicitHeight: 40
                    opacity: enabled ? 1 : 0.3
                    border.color: delayButton1.down ? "#98FB98" : "#006400"
                    border.width: 1


                }







            }

        }



    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}
}
##^##*/
