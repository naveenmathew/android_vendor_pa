# Copyright (C) 2014 ParanoidAndroid Project
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

# Check for target product
ifeq (pa_yuga,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_xhdpi

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Inherit telephony common stuff
$(call inherit-product, vendor/pa/configs/telephony.mk)

# Include AOSPA common configuration
include vendor/pa/main.mk

# Inherit device configuration
$(call inherit-product, device/sony/yuga/full_yuga.mk)

# Override AOSP build properties
PRODUCT_NAME := pa_yuga
PRODUCT_DEVICE := yuga
PRODUCT_BRAND := sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := Xperia Z
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C6603 TARGET_DEVICE=yuga BUILD_FINGERPRINT=Sony/C6603_1270-6697/C6603:4.4.2/10.5.A.0.230/WP5_rg:user/release-keys PRIVATE_BUILD_DESC="yuga-userdebug 4.4.2 10.5.A.0.230 WP5_rg test-keys"

endif
