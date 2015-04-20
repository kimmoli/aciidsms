/*
    aciidsms, SMS Sender
*/

#ifndef SMS_H
#define SMS_H
#include <QObject>

class Sms : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString version READ readVersion NOTIFY versionChanged())

public:
    explicit Sms(QObject *parent = 0);
    ~Sms();

    QString readVersion();

    Q_INVOKABLE void sendSMS(QString number, QString message);

signals:
    void versionChanged();

    //private:

};


#endif // SMS_H

