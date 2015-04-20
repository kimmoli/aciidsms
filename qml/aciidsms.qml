/*
    aciidsms, SMS Sender
*/

import QtQuick 2.0
import Sailfish.Silica 1.0
import aciidsms.Sms 1.0

ApplicationWindow
{
    id: aciidsms

    property string coverActionLeftIcon: "image://theme/icon-cover-pause"
    property string coverActionRightIcon: "image://theme/icon-cover-play"

    initialPage: Qt.resolvedUrl("pages/Aciidsms.qml")
    cover: Qt.resolvedUrl("cover/CoverPage.qml")

    function coverActionLeft()
    {
        console.log("Left cover action")
    }

    function coverActionRight()
    {
        console.log("Right cover action")
    }

    Sms
    {
        id: sms
    }
}


