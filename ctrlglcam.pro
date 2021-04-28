message("PWD" $$PWD)

TEMPLATE = app
CONFIG += console
CONFIG += c11
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += main.c
SOURCES += microui/demo/renderer.c
SOURCES += microui/src/microui.c
HEADERS += microui/demo/renderer.h
HEADERS += microui/src/microui.h

DEFINES += __USE_MINGW_ANSI_STDIO

INCLUDEPATH += C:/msys64/mingw64/include
INCLUDEPATH += $$PWD/microui/src/

LIBS += -LC:/msys64/mingw64/lib
LIBS += -lmingw32 -lSDL2main -lSDL2 -lopengl32 -lm -lGLU32 -lGLEW32

QMAKE_CFLAGS_WARN_ON += -Wno-unused-function



#NNG
INCLUDEPATH += $$PWD/nng/include
LIBS += -L$$PWD/nng/build
LIBS += -lnng
LIBS += -lws2_32 -lmswsock -ladvapi32 -lkernel32 -luser32 -lgdi32 -lwinspool -lshell32 -lole32 -loleaut32 -luuid -lcomdlg32 -ladvapi32
