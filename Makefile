TARGET := iphone:clang:latest:11.0
INSTALL_TARGET_PROCESSES = YouTube
ARCHS = arm64
PACKAGE_VERSION = 1.0.3

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = YTShortsProgress

$(TWEAK_NAME)_FILES = Tweak.x
$(TWEAK_NAME)_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
