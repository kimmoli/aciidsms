#
# Project aciidsms, SMS Sender
#

TARGET = aciidsms

CONFIG += sailfishapp
QT += dbus

DEFINES += "APPVERSION=\\\"$${SPECVERSION}\\\""

message($${DEFINES})

SOURCES += src/aciidsms.cpp \
	src/sms.cpp
	
HEADERS += src/sms.h

OTHER_FILES += qml/aciidsms.qml \
    qml/cover/CoverPage.qml \
    qml/pages/Aciidsms.qml \
    qml/pages/AboutPage.qml \
    rpm/aciidsms.spec \
	aciidsms.png \
    aciidsms.desktop

