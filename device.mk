#
# Copyright (C) 2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Get non-open-source specific aspects
$(call inherit-product, vendor/xiaomi/olives/olives-vendor.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Asserts
TARGET_OTA_ASSERT_DEVICE := olive,olivelite,olivewood

# Boot animation
TARGET_SCREEN_HEIGHT := 1520
TARGET_SCREEN_WIDTH := 720

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# ANT+
PRODUCT_PACKAGES += \
    AntHalService

# Bluetooth
PRODUCT_PACKAGES += \
   BluetoothQti

# Camera
PRODUCT_PACKAGES += \
    Snap

# CNE
PRODUCT_PACKAGES += \
    libcnefeatureconfig

# Framework detect
PRODUCT_PACKAGES += \
    libqti_vndfwk_detect \
    libvndfwk_detect_jni.qti

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.manager@1.0 \
    android.hidl.base@1.0

# HW Crypto
PRODUCT_PACKAGES += \
    libcrypto

# IMS
PRODUCT_PACKAGES += \
    ims-ext-common \
    ims_ext_common.xml

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.olives

# Net
PRODUCT_PACKAGES += \
    android.system.net.netd@1.0 \
    libandroid_net \
    netutils-wrapper-1.0

# Properties
PRODUCT_COMPATIBLE_PROPERTY_OVERRIDE := true

# QCOM
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/permissions/privapp-permissions-qti.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-qti.xml

# RIL
PRODUCT_PACKAGES += \
    android.hardware.radio@1.4 \
    android.hardware.radio.config@1.2 \
    android.hardware.secure_element@1.0

PRODUCT_PACKAGES += \
    librmnetctl \
    libxml2

# Telephony
PRODUCT_PACKAGES += \
    qti-telephony-hidl-wrapper \
    qti_telephony_hidl_wrapper.xml \
    qti-telephony-utils \
    qti_telephony_utils.xml

PRODUCT_PACKAGES += \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# TextClassifier
PRODUCT_PACKAGES += \
    textclassifier.bundle1

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 29
PRODUCT_PACKAGES += \
    vndk_package

# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_cfg.dat:$(TARGET_COPY_OUT_SYSTEM)/etc/firmware/wlan/prima/WCNSS_cfg.dat

# WiFi Display
PRODUCT_PACKAGES += \
    libnl

PRODUCT_BOOT_JARS += \
    WfdCommon
