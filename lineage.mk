# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)
$(call inherit-product, device/Lenovo/TB3-850F/device_TB3-850F.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 1280
TARGET_SCREEN_HEIGHT := 800

# Release name
PRODUCT_RELEASE_NAME := TB3-850F
PRODUCT_NAME := lineage_TB3-850F
PRODUCT_MODEL := Lenovo Tab TB3-850F
PRODUCT_DEVICE := TB3-850F
PRODUCT_MANUFACTURER := Lenovo
PRODUCT_BRAND := google
