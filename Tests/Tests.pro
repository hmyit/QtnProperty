include(../Common.pri)
PEG_TOOL = $$BIN_DIR/QtnPEG
include(../PEG.pri)

QT += core script testlib

TARGET = QtnPropertyTests

CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app

HEADERS += \
    TestProperty.h \
    TestGeneratedProperty.h \
    TestEnum.h

SOURCES += main.cpp \
    TestProperty.cpp \
    TestGeneratedProperty.cpp \
    TestEnum.cpp

PEG_SOURCES += PEG/test.pef \
               PEG/test2.pef

OTHER_FILES += $$PEG_SOURCES

LIBS += -L$$BIN_DIR -lQtnPropertyCore
win32 {
} else:unix {
    QMAKE_LFLAGS += -Wl,-rpath,$$BIN_DIR
}

INCLUDEPATH += $$ROOT_DIR/Core/


