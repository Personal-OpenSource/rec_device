#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/xiaomi/sirius

# Decryption
PRODUCT_PACKAGES_ENG += \
    qcom_decrypt \
    qcom_decrypt_fbe

# Recovery
TARGET_RECOVERY_DEVICE_MODULES += \
    libion

TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libion.so

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
