#
# Copyright (C) 2023 Project Kaleidoscope
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configurations
$(call inherit-product, device/motorola/hiphic/device.mk)

# Inherit common configurations
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := hiphic
PRODUCT_MANUFACTURER := motorola
PRODUCT_MODEL := XT2201-2
PRODUCT_NAME := aosp_hiphic

PRODUCT_GMS_CLIENTID_BASE := android-motorola
