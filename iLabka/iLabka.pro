#-------------------------------------------------
#
# Project created by QtCreator 2019-05-09T19:39:56
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets printsupport

VERSION = 0.1
QMAKE_TARGET_COMPANY = MIPTs students
QMAKE_TARGET_PRODUCT = iLabka/GraphBuilder

TARGET = iLabka
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS plot fopenmp
# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += c++11

SOURCES += \
        main.cpp \
        mainwindow.cpp \
    ../qcustomplot/qcustomplot.cpp \
    Info/About_iLabka/about_ilabka.cpp \
    Plots/mplots.cpp \
    ../checker/Checker.cpp \
    ../decoder/Decoder.cpp \
    ../parallel/execute.cpp \
    ../transforms/fourier.cpp


HEADERS += \
        mainwindow.h \
    ../qcustomplot/qcustomplot.h \
    Info/About_iLabka/about_ilabka.h \
    Plots/mplots.h \
    ../checker/utils/EmptyStringException.h \
    ../checker/utils/NoSuchFormatException.h \
    ../checker/Checker.h \
    ../constants/Constants.h \
    ../decoder/Decoder.h \
    ../parallel/execute.h \
    ../transforms/fourier.h



FORMS += \
        mainwindow.ui \
    Info/About_iLabka/about_ilabka.ui \
    Plots/mplots.ui

QMAKE_LFLAGS += -fopenmp

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

