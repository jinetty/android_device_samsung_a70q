#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Inherit from a70q device
$(call inherit-product, device/samsung/a70q/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# RiceDroid flags
RICE_MAINTAINER := Jinetty21
RICE_DEVICE := Galaxy A70
RICE_OFFICIAL := false
RICE_CHIPSET := Snapdragon 675
TARGET_USE_PIXEL_FINGERPRINT := true
TARGET_HAS_UDFPS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
SUSHI_BOOTANIMATION  := 1080
EXTRA_UDFPS_ANIMATIONS := true
TARGET_ENABLE_BLUR := true
TARGET_BUILD_GRAPHENEOS_CAMERA := false
TARGET_BUILD_APERTURE_CAMERA := true
WITH_GMS := false
TARGET_CORE_GMS := false
TARGET_CORE_GMS_EXTRAS := false

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_a70q
PRODUCT_DEVICE := a70q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A705
PRODUCT_MANUFACTURER := samsung

BUILD_FINGERPRINT := "samsung/a70qxx/a70q:11/RP1A.200720.012/A705FNXXU5DVK6:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a70qxx-user 11 RP1A.200720.012 A705FNXXU5DVK6 release-keys" \
    PRODUCT_NAME="a70q" \
    TARGET_DEVICE="a70q"

PRODUCT_GMS_CLIENTID_BASE := android-samsung
