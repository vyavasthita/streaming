#
# QT Project file for libnNetmicro
#
# Notes: Must include common.pri to resolve sub-library requirements

TEMPLATE = lib
win32:CONFIG += static
else:CONFIG  += shared

QT += network core

TARGET = libnNetmicro
include( ../../common.pri )

HEADERS += $$files(include/*.h)
SOURCES += $$files(src/*.cpp)
