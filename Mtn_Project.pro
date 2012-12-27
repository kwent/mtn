TARGET = mtn
CONFIG += console

INCLUDEPATH += ffmpeg\include
INCLUDEPATH += gd-2.0.34-win32\include

LIBS += -LC:\Users\kwent\Desktop\mtn\ffmpeg\lib -lavcodec
LIBS += -LC:\Users\kwent\Desktop\mtn\ffmpeg\lib -lavformat
LIBS += -LC:\Users\kwent\Desktop\mtn\ffmpeg\lib -lswscale
LIBS += -LC:\Users\kwent\Desktop\mtn\ffmpeg\lib -lavutil
LIBS += -LC:\Users\kwent\Desktop\mtn\gd-2.0.34-win32\lib -lbgd

QMAKE_LFLAGS += -O3 -s -D_FILE_OFFSET_BITS=64 -mms-bitfields -mtune=i686 -march=i386

HEADERS += fake_tchar.h

SOURCES += mtn.c

