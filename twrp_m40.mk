#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from m40 device
$(call inherit-product, device/samsung/m40/device.mk)

PRODUCT_DEVICE := m40
PRODUCT_NAME := twrp_m40
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M405F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="m40dd-user 11 RP1A.200720.012 M405FDDS2CWF3 release-keys"

BUILD_FINGERPRINT := samsung/m40dd/m40:11/RP1A.200720.012/M405FDDS2CWF3:user/release-keys
