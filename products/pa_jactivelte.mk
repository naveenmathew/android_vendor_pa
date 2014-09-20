# Copyright (C) 2014 ParanoidSaberDroid Project
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

ifeq (pa_jactivelte,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_xhdpi

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Inherit telephony common stuff
$(call inherit-product, vendor/pa/configs/telephony.mk)

# Include AOSPA common configuration
include vendor/pa/main.mk

# Inherit device configuration
$(call inherit-product, device/samsung/jactivelte/full_jactivelte.mk)

# Override AOSP build properties
PRODUCT_NAME := pa_jactivelte
PRODUCT_DEVICE := jactivelte
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-I9295
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jactivelte TARGET_DEVICE=jactivelte BUILD_FINGERPRINT="samsung/jactiveltexx/jactivelte:4.4.2/KOT49H/I9295XXUCNF1:user/release-keys" PRIVATE_BUILD_DESC="jactiveltexx-user 4.4.2 KOT49H I9295XXUCNF1 release-keys"

endif
