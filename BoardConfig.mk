#
# Copyright (C) 2024 The LineageOS Project
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

LOCAL_PATH := device/samsung/j3y17lte

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Firmware
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Platform
TARGET_BOARD_PLATFORM := exynos5
#TARGET_SLSI_VARIANT := bsp
TARGET_SOC := exynos7570
TARGET_BOOTLOADER_BOARD_NAME := universal7570
BOARD_VENDOR := samsung

# CPU
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a53

# Binder
TARGET_USES_64_BIT_BINDER := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/universal7570
TARGET_KERNEL_CONFIG := lineage-j3y17lte_defconfig

TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_LINUX_KERNEL_VERSION := 3.18

BOARD_CUSTOM_BOOTIMG_MK := hardware/samsung/mkbootimg.mk
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_IMAGE_NAME := Image
#BOARD_KERNEL_CMDLINE := The bootloader ignores the cmdline from the boot.img
BOARD_KERNEL_SEPARATED_DT := true
TARGET_CUSTOM_DTBTOOL := dtbhtoolExynos

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE     := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 39845888
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 2885681152
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12314476544
BOARD_CACHEIMAGE_PARTITION_SIZE    := 209715200
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE  := ext4

# blockdev --getbsz /dev/block/mmcblk0p9
BOARD_FLASH_BLOCK_SIZE := 4096

# Use these flags if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true

# Vendor separation
TARGET_COPY_OUT_VENDOR := system/vendor

# OTA
TARGET_OTA_ASSERT_DEVICE := j3y17lte,j3y17ltexx
