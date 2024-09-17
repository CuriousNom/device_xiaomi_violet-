#
# Copyright (C) 2018-2020 The LineageOS Project
# Copyright (C) 2024 The Evolution-X Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from violet device
$(call inherit-product, device/xiaomi/violet/device.mk)

# Inherit some common InfinityX stuff.
$(call inherit-product, vendor/blaze/config/common_full_phone.mk)

# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 1080

# Extra Stuffs
INFINITY_BUILD_TYPE := OFFICIAL
INFINITY_MAINTAINER := Aryan
TARGET_BUILD_VIMUSIC := true
USE_MOTO_CALCULATOR := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USES_PICO_GAPPS := true
BLAZE_BUILD_TYPE := OFFICIAL
BLAZE_MAINTAINER := Aryan
WITH_GAPPS := true

# MiuiCamera
$(call inherit-product-if-exists, vendor/MiuiCamera/config.mk)

# Charging Animation
TARGET_INCLUDE_PIXEL_CHARGER := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := blaze_violet
PRODUCT_DEVICE := violet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="violet"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
