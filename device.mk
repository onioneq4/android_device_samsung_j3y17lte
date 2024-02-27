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

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Flat device tree for boot image
PRODUCT_PACKAGES += \
    dtbhtoolExynos

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.samsungexynos7570 \
    init.baseband.rc \
    init.container.rc \
    init.environ.rc \
    init.samsungexynos7570.rc \
    init.samsungexynos7570.usb.rc \
    init.samsung.rc \
    init.usb.configfs.rc \
    init.usb.rc \
    init.zygote32.rc

# System.prop
TARGET_SYSTEM_PROP += device/samsung/j3y17lte/system.prop
