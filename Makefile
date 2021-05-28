TARGET := iphone:clang:latest:13.0
ARCHS = arm64 arm64e
THEOS_DEVICE_IP=192.168.254.67


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = PasswordAutofillDisableGD

PasswordAutofillDisableGD_FILES = Tweak.x
PasswordAutofillDisableGD_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
