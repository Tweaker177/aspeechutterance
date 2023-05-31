TARGET := macosx:clang:latest:10.14

include $(THEOS)/makefiles/common.mk

TOOL_NAME = aSpeechUtterance

aSpeechUtterance_FILES = main.m
aSpeechUtterance_CFLAGS = -fobjc-arc
aSpeechUtterance_INSTALL_PATH = /usr/local/bin

include $(THEOS_MAKE_PATH)/tool.mk
