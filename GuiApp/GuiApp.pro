include(../defaults.pri)

QT         += core gui opengl widgets
DEFINES    += _DEPTHMAP
TEMPLATE   = app
TARGET     =depthmapX

SOURCES    = main.cpp


win32:Release:LIBS += -L../depthmapX/release
win32:Debug:LIBS += -L../depthmapX/debug
!win32:LIBS += -L../depthmapX

LIBS += -ldepthmapX

!win32:!macx:LIBS += -L/usr/lib/i386-linux-gnu/

!win32:!macx:LIBS += -lGL -lGLU


win32:LIBS += -lOpenGl32 -lglu32 -lgdi32

