LOCAL_MODULE_PATH := $(shell dirname $(lastword $(MAKEFILE_LIST)))

# copy files
PRODUCT_COPY_FILES += \
    $(LOCAL_MODULE_PATH)/init.ethernet.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.ethernet.rc \
