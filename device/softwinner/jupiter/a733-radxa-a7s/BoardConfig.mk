CONFIG_AW_ENABLE_GKI := false

include device/softwinner/common/BoardConfigCommon.mk

include $(PRODUCT_PLATFORM_PATH)/BoardConfig.mk

# SELinux | permissive enforcing
BOARD_KERNEL_CMDLINE := selinux=1 androidboot.selinux=permissive

# androidboot.* should use bootconfig, others must use cmdline
BOARD_BOOTCONFIG += androidboot.selinux=permissive
BOARD_KERNEL_CMDLINE += firmware_class.path=/vendor/etc/firmware
BOARD_BOOTCONFIG += androidboot.dtbo_idx=2

# wifi and bt configuration
# 1. Wifi Configuration
BOARD_WIFI_VENDOR := common
BOARD_USR_WIFI    := common
WIFI_DRIVER_MODULE_PATH :=
WIFI_DRIVER_MODULE_NAME :=
WIFI_DRIVER_MODULE_ARG  :=

# 2. Bluetooth Configuration
BOARD_BLUETOOTH_VENDOR    := common
BOARD_HAVE_BLUETOOTH_NAME :=
BOARD_BLUETOOTH_CONFIG_DIR :=  $(PRODUCT_PLATFORM_PATH)/common/wireless/bluetooth
# Must include after wifi/bt configuration
include device/softwinner/common/config/wireless/wireless_config.mk

#Reserve0, replace bootlogo and bootanimation
BOARD_ROOT_EXTRA_FOLDERS += Reserve0

# arm64 requires the kernel at a 2MB-aligned physical address (MIN_KIMG_ALIGN = SZ_2M
# in arch/arm64/include/asm/boot.h).  The default arm64 kernel_offset of 0x80000
# places the kernel at 0x40080000, which is not 2MB-aligned.  Without a KASLR seed
# from the bootloader the kernel cannot self-relocate, causing a BUG_ON(pmd_sect())
# in paging_init/alloc_init_cont_pte.  Move the kernel to 0x40200000 (offset 0x200000).
#
# The shared env.cfg loads boot.img at 0x4007f000 (= 0x40080000 - 0x1000), which was
# designed so kernel data lands exactly at the old kernel_addr 0x40080000 (no copy).
# With the new kernel_addr 0x40200000, the copy would overlap the loaded boot.img region,
# triggering uboot's sunxi_mem_info and bootm overlap checks.  Use an A7S-specific
# env.cfg that loads boot.img at 0x401ff000 (= 0x40200000 - 0x1000) so kernel data
# still lands exactly at kernel_addr with no copy needed.
BOARD_KERNEL_OFFSET  := 0x200000
BOARD_DTB_OFFSET     := $(shell printf "(%d+%d+%d+%d)/%d*%d\n" \
                          0x200000 0x3000000 0 0x1FFFFF 0x100000 0x100000 | bc)
BOARD_RAMDISK_OFFSET := $(shell printf "%d+%d\n" $(BOARD_DTB_OFFSET) 0x100000 | bc)
BOARD_MKBOOTIMG_ARGS := --board $(BOARD_KERNEL_ARCH) \
                        --kernel_offset $(BOARD_KERNEL_OFFSET) \
                        --dtb_offset $(BOARD_DTB_OFFSET) \
                        --ramdisk_offset $(BOARD_RAMDISK_OFFSET) \
                        --header_version $(BOARD_BOOT_HEADER_VERSION)
# Replace the shared env.cfg with one that uses the 2MB-aligned load address.
BOARD_ADD_PACK_CONFIG := $(filter-out $(PRODUCT_PLATFORM_PATH)/common/system/env.cfg,$(BOARD_ADD_PACK_CONFIG))
BOARD_ADD_PACK_CONFIG += $(TARGET_DEVICE_DIR)/system/env.cfg
