import QtQuick 2.10
import QtQuick.Controls 2.0
import MyBackend 1.0

Rectangle {
    id: rectangle
    color: "red"
    width: 200
    height: 200

    BackEnd {
        id: backend
    }

    TextField {
        text: backend.userName
        placeholderText: qsTr("User name")
        anchors.centerIn: parent

        onTextChanged: backend.userName = text
    }

}
