LOCAL_PATH := device/Lenovo/TB3_850F

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir,root) 

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/verity.mk)

ifneq (,$(filter eng,$(TARGET_BUILD_VARIANT)))
	PRODUCT_SUPPORTS_BOOT_SIGNER := true
	PRODUCT_VERITY_SIGNING_KEY := build/target/product/security/verity
endif

PRODUCT_NAME := TB3_850F
