LOCAL_MODULE_PATH := $(shell dirname $(lastword $(MAKEFILE_LIST)))

# PRODUCT_COPY_FILES
AUDIO_CONFIG_PATH := $(LOCAL_MODULE_PATH)/audio

PRODUCT_PACKAGES += \
    audio.dsp.jupiter \
    audio.btsco.jupiter


# PRODUCT_COPY_FILES
PRODUCT_COPY_FILES += \
    $(AUDIO_CONFIG_PATH)/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(AUDIO_CONFIG_PATH)/dsp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dsp_audio_policy_configuration.xml \
    $(AUDIO_CONFIG_PATH)/bluetooth_sco_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_sco_audio_policy_configuration.xml \
    $(AUDIO_CONFIG_PATH)/audio_policy_volumes_drc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes_drc.xml \
    $(AUDIO_CONFIG_PATH)/auto_codec_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/auto_codec_paths.xml \
    $(AUDIO_CONFIG_PATH)/audio_config.json:$(TARGET_COPY_OUT_VENDOR)/etc/audio_config.json \

#audio hal
AUDIO_HAL_TYPE := auto
OUTPUT_DEFAULT_CARD       := I2S0
INPUT_DEFAULT_CARD        := I2S0
DSP_OUTPUT_DEFAULT_CARD   := I2S4
DSP_INPUT_DEFAULT_CARD    := I2S4
PORT_BTSCO := 0

# PRODUCT_COPY_FILES
AUDIO_SFX_MGMT_PATH := $(LOCAL_MODULE_PATH)/audio/cedarSE
PRODUCT_COPY_FILES += \
    $(AUDIO_SFX_MGMT_PATH)/audio_device_desc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/cedarSE/audio_device_desc.xml \
    $(AUDIO_SFX_MGMT_PATH)/audio_hw_drc_param.xml:$(TARGET_COPY_OUT_VENDOR)/etc/cedarSE/audio_hw_drc_param.xml \
    $(AUDIO_SFX_MGMT_PATH)/audio_hw_hpf_param.xml:$(TARGET_COPY_OUT_VENDOR)/etc/cedarSE/audio_hw_hpf_param.xml \
    $(AUDIO_SFX_MGMT_PATH)/audio_rp_eq_param.xml:$(TARGET_COPY_OUT_VENDOR)/etc/cedarSE/audio_rp_eq_param.xml \
    $(AUDIO_SFX_MGMT_PATH)/audio_rp_fd_proc_param.xml:$(TARGET_COPY_OUT_VENDOR)/etc/cedarSE/audio_rp_fd_proc_param.xml \
    $(AUDIO_SFX_MGMT_PATH)/audio_rp_pass_filter_param.xml:$(TARGET_COPY_OUT_VENDOR)/etc/cedarSE/audio_rp_pass_filter_param.xml \
    $(AUDIO_SFX_MGMT_PATH)/audio_rp_rtc_aec_param.xml:$(TARGET_COPY_OUT_VENDOR)/etc/cedarSE/audio_rp_rtc_aec_param.xml \
    $(AUDIO_SFX_MGMT_PATH)/audio_rp_rtc_agc_param.xml:$(TARGET_COPY_OUT_VENDOR)/etc/cedarSE/audio_rp_rtc_agc_param.xml \
    $(AUDIO_SFX_MGMT_PATH)/audio_rp_rtc_ans_param.xml:$(TARGET_COPY_OUT_VENDOR)/etc/cedarSE/audio_rp_rtc_ans_param.xml \
    $(AUDIO_SFX_MGMT_PATH)/audio_rp_surround_param.xml:$(TARGET_COPY_OUT_VENDOR)/etc/cedarSE/audio_rp_surround_param.xml \
    $(AUDIO_SFX_MGMT_PATH)/audio_sw_agc_param.xml:$(TARGET_COPY_OUT_VENDOR)/etc/cedarSE/audio_sw_agc_param.xml \
    $(AUDIO_SFX_MGMT_PATH)/audio_sw_aw_ans_param.xml:$(TARGET_COPY_OUT_VENDOR)/etc/cedarSE/audio_sw_aw_ans_param.xml \
    $(AUDIO_SFX_MGMT_PATH)/audio_sw_delay_param.xml:$(TARGET_COPY_OUT_VENDOR)/etc/cedarSE/audio_sw_delay_param.xml \
    $(AUDIO_SFX_MGMT_PATH)/audio_sw_eq_param.xml:$(TARGET_COPY_OUT_VENDOR)/etc/cedarSE/audio_sw_eq_param.xml \
    $(AUDIO_SFX_MGMT_PATH)/audio_sw_inverter_param.xml:$(TARGET_COPY_OUT_VENDOR)/etc/cedarSE/audio_sw_inverter_param.xml \
    $(AUDIO_SFX_MGMT_PATH)/audio_sw_pass_filter_param.xml:$(TARGET_COPY_OUT_VENDOR)/etc/cedarSE/audio_sw_pass_filter_param.xml \
    $(AUDIO_SFX_MGMT_PATH)/audio_sw_route_param.xml:$(TARGET_COPY_OUT_VENDOR)/etc/cedarSE/audio_sw_route_param.xml \
    $(AUDIO_SFX_MGMT_PATH)/audio_sw_rtc_aec_param.xml:$(TARGET_COPY_OUT_VENDOR)/etc/cedarSE/audio_sw_rtc_aec_param.xml \
    $(AUDIO_SFX_MGMT_PATH)/audio_sw_rtc_agc_param.xml:$(TARGET_COPY_OUT_VENDOR)/etc/cedarSE/audio_sw_rtc_agc_param.xml \
    $(AUDIO_SFX_MGMT_PATH)/audio_sw_rtc_ans_param.xml:$(TARGET_COPY_OUT_VENDOR)/etc/cedarSE/audio_sw_rtc_ans_param.xml \
    $(AUDIO_SFX_MGMT_PATH)/audio_sw_surround_param.xml:$(TARGET_COPY_OUT_VENDOR)/etc/cedarSE/audio_sw_surround_param.xml \
    $(AUDIO_SFX_MGMT_PATH)/audio_sw_volume_param.xml:$(TARGET_COPY_OUT_VENDOR)/etc/cedarSE/audio_sw_volume_param.xml \

PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.audio.headset.mic.disable=true

BOOTANIMATION_CONFIG_PATH := $(LOCAL_MODULE_PATH)/bootanimation
PRODUCT_COPY_FILES += \
    $(BOOTANIMATION_CONFIG_PATH)/bootanimation.zip:system/media/bootanimation.zip \
    $(BOOTANIMATION_CONFIG_PATH)/bootanimation_dark.zip:system/media/bootanimation_dark.zip

PRODUCT_COPY_FILES += \
    $(AUDIO_CONFIG_PATH)/firmware/fm1388/FM1388_mode.cfg:$(TARGET_COPY_OUT_VENDOR)/etc/firmware/FM1388_mode.cfg \
    $(AUDIO_CONFIG_PATH)/firmware/fm1388/FM1388_50000000.dat:$(TARGET_COPY_OUT_VENDOR)/etc/firmware/FM1388_50000000.dat \
    $(AUDIO_CONFIG_PATH)/firmware/fm1388/FM1388_60000000.dat:$(TARGET_COPY_OUT_VENDOR)/etc/firmware/FM1388_60000000.dat \
    $(AUDIO_CONFIG_PATH)/firmware/fm1388/FM1388_5FFC0000.dat:$(TARGET_COPY_OUT_VENDOR)/etc/firmware/FM1388_5FFC0000.dat \
    $(AUDIO_CONFIG_PATH)/firmware/fm1388/FM1388_5FFE0000.dat:$(TARGET_COPY_OUT_VENDOR)/etc/firmware/FM1388_5FFE0000.dat \
    $(AUDIO_CONFIG_PATH)/firmware/fm1388/FM1388_DSP_VR16K.vec:$(TARGET_COPY_OUT_VENDOR)/etc/firmware/FM1388_DSP_VR16K.vec \
    $(AUDIO_CONFIG_PATH)/firmware/fm1388/FM1388_Path_BT16K.vec:$(TARGET_COPY_OUT_VENDOR)/etc/firmware/FM1388_Path_BT16K.vec \
    $(AUDIO_CONFIG_PATH)/firmware/fm1388/FM1388_Path_MIC01.vec:$(TARGET_COPY_OUT_VENDOR)/etc/firmware/FM1388_Path_MIC01.vec \
    $(AUDIO_CONFIG_PATH)/firmware/fm1388/FM1388_sleep.vec:$(TARGET_COPY_OUT_VENDOR)/etc/firmware/FM1388_sleep.vec \
    $(AUDIO_CONFIG_PATH)/firmware/fm1388/FM1388_DSP_BT16K.vec:$(TARGET_COPY_OUT_VENDOR)/etc/firmware/FM1388_DSP_BT16K.vec \
    $(AUDIO_CONFIG_PATH)/firmware/fm1388/FM1388_init.vec:$(TARGET_COPY_OUT_VENDOR)/etc/firmware/FM1388_init.vec \
    $(AUDIO_CONFIG_PATH)/firmware/fm1388/FM1388_Path_BT8K.vec:$(TARGET_COPY_OUT_VENDOR)/etc/firmware/FM1388_Path_BT8K.vec \
    $(AUDIO_CONFIG_PATH)/firmware/fm1388/FM1388_Path_VR16K.vec:$(TARGET_COPY_OUT_VENDOR)/etc/firmware/FM1388_Path_VR16K.vec \
    $(AUDIO_CONFIG_PATH)/firmware/fm1388/FM1388_wakeup.vec:$(TARGET_COPY_OUT_VENDOR)/etc/firmware/FM1388_wakeup.vec \
    $(AUDIO_CONFIG_PATH)/firmware/fm1388/FM1388_DSP_BT8K.vec:$(TARGET_COPY_OUT_VENDOR)/etc/firmware/FM1388_DSP_BT8K.vec \
    $(AUDIO_CONFIG_PATH)/firmware/fm1388/FM1388_Path_Bypass.vec:$(TARGET_COPY_OUT_VENDOR)/etc/firmware/FM1388_Path_Bypass.vec \
    $(AUDIO_CONFIG_PATH)/firmware/fm1388/FM1388_run.vec:$(TARGET_COPY_OUT_VENDOR)/etc/firmware/FM1388_run.vec \
    $(AUDIO_CONFIG_PATH)/firmware/fm1388/user_defined_path.cfg:$(TARGET_COPY_OUT_VENDOR)/etc/firmware/user_defined_path.cfg


PRODUCT_PACKAGES += \
    tinyplay \
    tinycap \
    tinymix \
	tinypcminfo

#AW_MEDIA_AFBC_MODE := 2