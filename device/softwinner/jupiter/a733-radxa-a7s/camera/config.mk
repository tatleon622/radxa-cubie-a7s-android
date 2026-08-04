LOCAL_MODULE_PATH := $(shell dirname $(lastword $(MAKEFILE_LIST)))
# copy files
PRODUCT_COPY_FILES += \
    $(LOCAL_MODULE_PATH)/init.camera.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.camera.rc \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.autofocus.xml \

ifeq ($(PRODUCT_HAS_UVC_CAMERA),true)
PRODUCT_COPY_FILES += \
    $(LOCAL_MODULE_PATH)/external_camera_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/external_camera_config.xml
endif
PRODUCT_COPY_FILES += \
    $(LOCAL_MODULE_PATH)/media_profiles.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml

PRODUCT_PACKAGES += \
    QRScanner \
    AwCamera2 \
    AwVideoIn


PRODUCT_COPY_FILES += $(call find-copy-subdir-files,"*.cfg",$(LOCAL_MODULE_PATH),$(TARGET_COPY_OUT_VENDOR)/etc)
PRODUCT_COPY_FILES += \
    $(LOCAL_MODULE_PATH)/camera_config.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/camera_config.xml
