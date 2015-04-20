/*
    aciidsms, SMS Sender
*/

#include "sms.h"
#include <QtDBus/QtDBus>
#include <QDBusArgument>

Sms::Sms(QObject *parent) :
    QObject(parent)
{
    emit versionChanged();
}

Sms::~Sms()
{
}

QString Sms::readVersion()
{
    return APPVERSION;
}

void Sms::sendSMS(QString number, QString message)
{

    /*
    dbus-send --system --print-reply --dest=
    org.ofono /ril_0 org.ofono.MessageManager.SendMessage string:"+358500000000" string:"test sms"
    */

    QDBusMessage m = QDBusMessage::createMethodCall("org.ofono",
                                                    "/ril_0",
                                                    "org.ofono.MessageManager",
                                                    "SendMessage" );

    QList<QVariant> args;
    args.append(number);
    args.append(message);
    m.setArguments(args);

    if (QDBusConnection::systemBus().send(m))
        qDebug() << "success";
    else
        qDebug() << "fail" << QDBusConnection::systemBus().lastError().message();
}
