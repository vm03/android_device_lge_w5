#
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

-include device/lge/msm8610-common/BoardConfigCommon.mk

TARGET_KERNEL_CONFIG := w5n_global_com_defconfig
BOARD_CUSTOM_BOOTIMG_MK := device/lge/w5/mkbootimg.mk

TARGET_LIBINIT_DEFINES_FILE := device/lge/w5/init/init_w5.cpp

DEVICE_RESOLUTION := 480x800

TARGET_OTA_ASSERT_DEVICE := w5,w5ds

# Nfc
BOARD_NFC_CHIPSET := pn547

#TWRP
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/lge/w5

# Charger
BOARD_HEALTHD_CUSTOM_CHARGER_RES := device/lge/w5/charger/images

-include vendor/lge/w5/BoardConfigVendor.mk
