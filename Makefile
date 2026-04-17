export THEOS ?= $(HOME)/theos

TARGET := iphone:clang:latest:14.0
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = mytweak

mytweak_FILES = Tweak.x
mytweak_CFLAGS = -fobjc-arc

include $(THEOS)/makefiles/tweak.mk
