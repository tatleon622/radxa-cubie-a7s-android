#LOCAL_MODULE_PATH := $(shell dirname $(lastword $(MAKEFILE_LIST)))

#PRODUCT_COPY_FILES += \
    $(LOCAL_MODULE_PATH)/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
    $(LOCAL_MODULE_PATH)/init.gnss.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.gnss.rc

#USE_GNSS_HAL_HDBD := true

#PRODUCT_PACKAGES += android.hardware.gnss-aidl-service.aw
#PRODUCT_PACKAGES += gps.default
