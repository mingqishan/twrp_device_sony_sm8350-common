#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from pdx214 device
$(call inherit-product, device/sony/pdx214/device.mk)

PRODUCT_DEVICE := pdx214
PRODUCT_NAME := omni_pdx214
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Pdx214
PRODUCT_MANUFACTURER := sony

PRODUCT_GMS_CLIENTID_BASE := android-sony

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="pdx214-user 11 RKQ1.220715.001 1 dev-keys"

BUILD_FINGERPRINT := Sony/pdx214/pdx214:11/RKQ1.220715.001/1:user/dev-keys
