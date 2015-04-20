/*
    aciidsms, SMS Sender
*/


#ifdef QT_QML_DEBUG
#include <QtQuick>
#endif

#include <sailfishapp.h>
#include <QtQml>
#include <QScopedPointer>
#include <QQuickView>
#include <QQmlEngine>
#include <QGuiApplication>
#include <QQmlContext>
#include <QCoreApplication>
#include "sms.h"


int main(int argc, char *argv[])
{
    qmlRegisterType<Sms>("aciidsms.Sms", 1, 0, "Sms");

    QScopedPointer<QGuiApplication> app(SailfishApp::application(argc, argv));
    QScopedPointer<QQuickView> view(SailfishApp::createView());
    view->setSource(SailfishApp::pathTo("qml/aciidsms.qml"));
    view->show();

    return app->exec();
}

