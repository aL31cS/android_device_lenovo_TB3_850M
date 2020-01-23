# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)
$(call inherit-product, device/Lenovo/TB3_850F/device_TB3_850F.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 1280
TARGET_SCREEN_HEIGHT := 800

# Release name
PRODUCT_RELEASE_NAME := TB3_850F
PRODUCT_NAME := lineage_TB3_850F
PRODUCT_MODEL := Lenovo Tab TB3_850F
PRODUCT_DEVICE := TB3_850F
PRODUCT_MANUFACTURER := Lenovo
PRODUCT_BRAND := google
