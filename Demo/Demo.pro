include(../Common.pri)
PEG_TOOL = $$BIN_DIR/QtnPEG
include(../PEG.pri)

QT += core gui widgets script scripttools

TARGET = QtnPropertyDemo
TEMPLATE = app

SOURCES +=  main.cpp\
            MainWindow.cpp \
            mydialog.cpp

HEADERS  += MainWindow.h \
            mydialog.h

FORMS    += MainWindow.ui \
            mydialog.ui

PEG_SOURCES += Demo.pef

INCLUDEPATH += $$ROOT_DIR/Core
INCLUDEPATH += $$ROOT_DIR/PropertyWidget

LIBS += -L$$BIN_DIR -lQtnPropertyCore -lQtnPropertyWidget

win32 {
} else:unix {
    QMAKE_LFLAGS += -Wl,-rpath,$$BIN_DIR
}

OTHER_FILES += \
    Demo.pef
