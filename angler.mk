# Inherit some common Google PixelROM-AOSP stuff.
$(call inherit-product, vendor/pixelrom-aosp/pixelrom.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/angler/aosp_angler.mk)

# Inherit backup overlay
$(call inherit-product, device/sample/products/backup_overlay.mk)

# Inherit Open GApps configuration
$(call inherit-product, device/huawei/angler/opengapps.mk)

# Build vendor from source if needed
ifeq ($(BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE),ext4)
$(call inherit-product, vendor/huawei/angler/vendorimage.mk)
endif

## Device identifier. This must come after all inclusions
PRODUCT_NAME := angler
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel XL
TARGET_MANUFACTURER := Huawei
PRODUCT_RESTRICT_VENDOR_FILES := false

# Only if vendor build disabled
ifneq ($(BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE),ext4)
BUILD_FINGERPRINT := google/angler/angler:7.1.2/N2G47H/3783593:user/release-keys
endif

PRODUCT_PACKAGES += \
	AOSPLinks
