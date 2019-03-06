#
# Copyright 2014 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

#Path where the device tree is stored
DEVICE_PATH := device/xiaomi/whyred

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := kryo

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a73

TARGET_BOARD_PLATFORM := sdm660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno509
TARGET_BOARD_SUFFIX := _64

ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true
TARGET_USES_64_BIT_BINDER := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sdm660
TARGET_NO_BOOTLOADER := true

# Encryption support
TARGET_HW_DISK_ENCRYPTION := true

# Boot image
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200,n8 androidboot.console=ttyMSM0 earlycon=msm_serial_dm,0xc170000
BOARD_KERNEL_CMDLINE += androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3
BOARD_KERNEL_CMDLINE += lpm_levels.sleep_disabled=1 sched_enable_hmp=1 sched_enable_power_aware=1
BOARD_KERNEL_CMDLINE += service_locator.enable=1 swiotlb=1 androidboot.configfs=true
BOARD_KERNEL_CMDLINE += androidboot.usbcontroller=a800000.dwc3
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x01000000

# Kernel
#TARGET_KERNEL_SOURCE := kernel/xiaomi/whyred     (Uncomment if building from kernel source)
#TARGET_KERNEL_CONFIG := whyred-perf_defconfig
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/Image.gz-dtb
TARGET_USES_UNCOMPRESSED_KERNEL := false
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb

# Partitions *FIXED (last updated 13/08/2018) Size is determined by: blocks * 1024
#                                                                               Sector-start sector-end sector-difference blocks*1024
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x04000000            # (Partition mmcblk0p58 1441792-1572863=131071)
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x04000000        # (Partition mmcblk0p59 1572864-1703935=131071)
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3170938880          # (Partition mmcblk0p61 2228224-8519679=6291455; 3145728*1024)
BOARD_VENDORIMAGE_PARTITION_SIZE := 2147483648
BOARD_USERDATAIMAGE_PARTITION_SIZE := 55155080192       # (Partition mmcblk0p64 14417920-122142686=107724766; 53862383*1024)
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456            # (Partition mmcblk0p60 1703936-2228223=524287; 262144*1024)
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432           # (Partition mmcblk0p53 524288-589823=65535; 32768*1024)
BOARD_FLASH_BLOCK_SIZE := 262144                        # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_VENDORIMAGE_PARTITION_SIZE := 2147483648

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery.fstab
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2160
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

# Use the non-open-source parts, if they're present
-include vendor/xiaomi/whyred/BoardConfigVendor.mk
