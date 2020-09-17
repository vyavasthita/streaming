#
# QT Project file for libnNetmicro
#
# Notes: Must include common.pri to resolve sub-library requirements
QT += core

CONFIG += c++11 console

TARGET = streamingmicro

HEADERS += $$files(include/*.h)
SOURCES += $$files(src/*.cpp)

unix:!macx: LIBS += -L/home/supernova/Documents/source_code/streaming/builds/libnNetmicro.so

INCLUDEPATH += $$PWD/../../libs/libnNetmicro/include
DEPENDPATH += $$PWD/../../libs/libnNetmicro/include

include( ../../common.pri )
