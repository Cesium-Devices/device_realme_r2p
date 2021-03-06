#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit from r2p device
$(call inherit-product, device/realme/r2p/device.mk)

# Inherit some CesiumOS stuff
$(call inherit-product, vendor/cesium/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := cesium_r2p
PRODUCT_DEVICE := r2p
PRODUCT_MANUFACTURER := OPPO
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := Realme 2 Pro

PRODUCT_GMS_CLIENTID_BASE := android-oppo

TARGET_VENDOR_PRODUCT_NAME := r2p
TARGET_VENDOR_DEVICE_NAME := r2p

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="r2p"
