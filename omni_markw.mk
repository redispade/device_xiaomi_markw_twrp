#
# Copyright (C) 2017 The Android Open Source Project
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

# Specify phone tech before including full_phone
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, build/target/product/embedded.mk)

# Inherit Telephony packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit language packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit 64bit support
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Time Zone data for recovery
PRODUCT_COPY_FILES += \
    system/timezone/output_data/iana/tzdata:recovery/root/system_root/system/usr/share/zoneinfo/tzdata

# Copy Logo
PRODUCT_COPY_FILES += device/xiaomi/markw/splashlogo.png:recovery/root/twres/images/splashlogo.png

#Fix HW FDE when building with Pie
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore=msm8953

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := markw
PRODUCT_NAME := omni_markw
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 4
PRODUCT_MANUFACTURER := Xiaomi

TARGET_VENDOR_PRODUCT_NAME := markw
TARGET_VENDOR_DEVICE_NAME := markw
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=markw PRODUCT_NAME=markw
