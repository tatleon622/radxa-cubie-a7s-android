LOCAL_MODULE_PATH := $(shell dirname $(lastword $(MAKEFILE_LIST)))

PRODUCT_COPY_FILES += \
    $(LOCAL_MODULE_PATH)/gsensor.cfg:$(TARGET_COPY_OUT_VENDOR)/etc/gsensor.cfg \
    $(LOCAL_MODULE_PATH)/gyro_sensor.cfg:$(TARGET_COPY_OUT_VENDOR)/etc/gyro_sensor.cfg \
    $(LOCAL_MODULE_PATH)/sensor_modules.cfg:$(TARGET_COPY_OUT_VENDOR)/etc/sensor_modules.cfg \
    $(LOCAL_MODULE_PATH)/init.input.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.input.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_MODULE_PATH)/goodix-ts.idc:$(TARGET_COPY_OUT_SYSTEM)/usr/idc/goodix-ts.idc \
    $(LOCAL_MODULE_PATH)/goodix-secondary-ts.idc:$(TARGET_COPY_OUT_SYSTEM)/usr/idc/goodix-secondary-ts.idc \

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \

USE_GSLFIRMWARE := true
GSLFIRMWARELIST := gsl3676_A101E39A02 gsl3676_XC_PG0800_064_FPC_A2
