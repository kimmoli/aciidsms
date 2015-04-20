/*
    aciidsms, SMS Sender
*/

import QtQuick 2.0
import Sailfish.Silica 1.0

Page
{
    id: page

    SilicaFlickable
    {
        anchors.fill: parent

        PullDownMenu
        {
            MenuItem
            {
                text: "About..."
                onClicked: pageStack.push(Qt.resolvedUrl("AboutPage.qml"),
                                          { "version": sms.version,
                                              "year": "2014",
                                              "name": "SMS Sender",
                                              "imagelocation": "/usr/share/icons/hicolor/86x86/apps/aciidsms.png"} )
            }
        }

        contentHeight: column.height

        Column
        {
            id: column

            width: page.width
            spacing: Theme.paddingLarge
            PageHeader
            {
                title: "Aciidsms"
            }
            TextField
            {
                id: number
                width: parent.width
                /* Might want to add somekind of validator here? */
            }
            TextField
            {
                id: message
                width: parent.width
            }
            Button
            {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Send"
                onClicked: sms.sendSMS(number.text, message.text)
            }
        }
    }

}


