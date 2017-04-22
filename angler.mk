# Inherit some common Google PixelROM-AOSP stuff.
$(call inherit-product, vendor/pixelrom-aosp/pixelrom.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/angler/aosp_angler.mk)

# Inherit backup overlay
$(call inherit-product, device/sample/products/backup_overlay.mk)

# Inherit Open GApps configuration
$(call inherit-product, device/huawei/angler/opengapps.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := angler
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel XL
TARGET_MANUFACTURER := Huawei
PRODUCT_RESTRICT_VENDOR_FILES := false
