LOCAL_MODULE_PATH := $(shell dirname $(lastword $(MAKEFILE_LIST)))

PRODUCT_COPY_FILES += \
    $(LOCAL_MODULE_PATH)/init.leds.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.leds.rc \
