TARGET := iphone:clang:13.3.1
INSTALL_TARGET_PROCESSES = SpringBoard
THEOS_DEVICE_IP = 192.168.2.1
ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ListeningModeActivator

ListeningModeActivator_FILES = Tweak.xm
ListeningModeActivator_LIBRARIES = activator
ListeningModeActivator_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
