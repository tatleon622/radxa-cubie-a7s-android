LOCAL_MODULE_PATH := $(shell dirname $(lastword $(MAKEFILE_LIST)))

# overlay
DEVICE_PACKAGE_OVERLAYS := \
    $(LOCAL_MODULE_PATH)/overlay \
    $(LOCAL_MODULE_PATH)/overlay_rro \
    $(DEVICE_PACKAGE_OVERLAYS)

