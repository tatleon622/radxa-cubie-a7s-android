PRODUCT_PLATFORM_PATH := $(shell dirname $(lastword $(MAKEFILE_LIST)))

PRODUCT_NAME := a733_radxa_a7s
PRODUCT_DEVICE := a733-radxa-a7s

CONFIG_LOW_RAM_DEVICE := false
CONFIG_3GB_DEVICE := false

# 32 bit products: TARGET_ARCH = arm && left TARGET_2ND_ARCH undefined
# 64/32 bit compatible products: TARGET_ARCH := arm64 &&TARGET_2ND_ARCH := arm
# 64 bit only products: TARGET_ARCH = arm64 && left TARGET_2ND_ARCH undefined
TARGET_ARCH := arm64
TARGET_2ND_ARCH := arm

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.ramconfig=none

# note: use include, not inherit-product
include device/softwinner/common/core.mk
include $(PRODUCT_PLATFORM_PATH)/$(PRODUCT_DEVICE)/device-common.mk