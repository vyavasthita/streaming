#
# QT Project file for libnNetmicro
#
# Notes: Must include common.pri to resolve sub-library requirements
QT += core

CONFIG += c++11 console

TARGET	= streamingmicro

HEADERS += $$files(include/*.h)
SOURCES += $$files(src/*.cpp)

include( ../../common.pri )


unix:!macx: LIBS += -L$$OUT_PWD/../../libs/libnNetmicro/ -llibnNetmicro

INCLUDEPATH += $$PWD/../../libs/libnNetmicro/include
DEPENDPATH += $$PWD/../../libs/libnNetmicro/include
