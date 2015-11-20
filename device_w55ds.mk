#
# Copyright (C) 2013 The CyanogenMod Project
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

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Specific overlay
DEVICE_PACKAGE_OVERLAYS += device/lge/w55ds/overlay

PRODUCT_PACKAGES += Torch


PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240 \
    ro.product.device=w55ds \
    ro.product.model=LG-D285 \
    persist.radio.multisim.config=dsds \
    persist.panel.orientation=0 \
    ro.sf.hwrotation=180 \
    camera2.portability.force_api=0

PRODUCT_COPY_FILES += \
    device/lge/w55ds/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/lge/msm8610-common/prebuilt/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/lge/w55ds/fstab.msm8610:root/fstab.msm8610

PRODUCT_LOCALES := en_US
PRODUCT_LOCALES += hdpi
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

$(call inherit-product, vendor/lge/w5/w5-vendor.mk)

# Inherit from msm8610-common
$(call inherit-product, device/lge/msm8610-common/msm8610.mk)
