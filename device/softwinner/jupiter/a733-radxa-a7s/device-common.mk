TARGET_BOARD_IC := a733
PRODUCT_BRAND := Allwinner
PRODUCT_BOARD := radxa_a7s
PRODUCT_MODEL := A733 RADXA A7S
PRODUCT_MANUFACTURER := Allwinner

PRODUCT_PREBUILT_PATH := longan/out/$(TARGET_BOARD_IC)/$(PRODUCT_BOARD)/android
PRODUCT_DEVICE_PATH := $(PRODUCT_PLATFORM_PATH)/$(PRODUCT_DEVICE)

CONFIG_SUPPORT_GMS := false

#Camera
PRODUCT_HAS_UVC_CAMERA := true
USE_CAMERA_HAL_3_4 := true

ifneq ($(CONFIG_AW_BUILD_FRAMEWORK_TARGET_FILE_ONLY),true)
PRODUCT_COPY_FILES += $(PRODUCT_PREBUILT_PATH)/bImage:kernel
endif

#Whether use for aiot product
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.aiot.enable=1

# AI
PRODUCT_NNAPI ?= false
PRODUCT_FACEID ?= cpu_v2

PRODUCT_PACKAGES += viplite-examples

#devfreq
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.vendor.power.devfs.enabled=1

#secure
BOARD_HAS_SECURE_OS := false

#set speaker project(true: double speaker, false: single speaker)
#set default eq
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.spk_dul.used=true \

# PRODUCT_PACKAGES += \
    DragonAtt \
    SoundRecorder \
    AwMutipleChannelCamera \
    VideoPlayer \
    PinyinIME \
    Dialer \
    Browser2 \
    Photos \
    Music \
    TvdVideo \
    LatinIME \
    NpuTest \
    TvdFileManager \
    ImageParser \
    libgifplayer_jni \
    libgifplayer \
    DragonRunin \
    RuninConfig \
    Socss \
    sysintfservice


#support custom bootlogo, bootanimation. sound
CONFIG_AW_FSTAB_TEMPLATE := $(wildcard $(PRODUCT_PLATFORM_PATH)/for_Reserve0/fstab.sun60iw2p1)

# PRODUCT_PACKAGES += \
    AwSystemInfo \
    libadmanager_jni \
    systemmixservice \
    libsystemmix_jni \
    Test_AD \
    RkDeviceTest

CONFIG_AW_FAKE_PACKAGES += Reserve0.img

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.sys.timezone=Asia/Shanghai \
    persist.sys.country=US \
    persist.sys.language=en

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=160

# multi network support
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.config.aw.multi_network_support=true

# set primary display orientation to 0
PRODUCT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.primary_display_orientation=ORIENTATION_0 \
    ro.vendor.gsi_gsen_rotation=0

#set default save_softap_state & dualethsupport(true:open false:close)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.config.aw.dual_eth_support=false \
    ro.config.aw.save_softap_state=true \

# vold
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.vold.nickname=true

# close boot music
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.sys.bootanim.play_sound=0

# (ro.vendor.sf.rotation + ro.primary_display.user_rotation) % 360 == 0
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.sf.rotation=0

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.primary_display.user_rotation=0 \
    ro.minui.default_rotation=ROTATION_DOWN \
    ro.recovery.input_rotation=ROTATION_DOWN \
    ro.recovery.ui.touch_high_threshold=60 \
    ro.qq.camera.sensor=3

PRODUCT_PROPERTY_OVERRIDES += \
    ro.soc.manufacturer=Allwinner \
    ro.soc.model=A733

#add model prop
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.config.back_camera=800 \
    ro.config.front_camera=500 \
    ro.config.cpu_cores=8 \
    ro.config.storage=64 \
    ro.config.media_vol_steps=15 \
    ro.config.media_vol_default=11 \
    ro.config.alarm_vol_steps=7 \
    ro.config.alarm_vol_default=5 \
    ro.config.system_vol_steps=15 \
    ro.config.system_vol_default=11 \
    ro.config.vc_call_vol_steps=5 \
    ro.config.vc_call_vol_default=4

PRODUCT_AAPT_CONFIG := mdpi tvdpi xlarge hdpi xhdpi large
PRODUCT_AAPT_PREF_CONFIG := mdpi

# add ir kl
CONFIG_AW_SUPPORT_IR := true

-include $(PRODUCT_DEVICE_PATH)/system/bsp-config.mk
$(call inherit-product, $(PRODUCT_DEVICE_PATH)/*/config.mk)
$(call inherit-product, $(PRODUCT_PLATFORM_PATH)/common/*/config.mk)
