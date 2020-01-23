#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

include vendor/Lenovo/TB3-850F/BoardConfigVendor.mk

# Headers
TARGET_SPECIFIC_HEADER_PATH := device/Lenovo/TB3_850F/include

# MTK Symbols
TARGET_LDPRELOAD += libxlog.so:libmtk_symbols.so

# Bootloader
TARGET_BOARD_PLATFORM := mt8735p
TARGET_BOOTLOADER_BOARD_NAME := mt8735p
TARGET_NO_BOOTLOADER := true

# ARCH
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := generic
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a15
TARGET_CPU_ABI_LIST := arm64-v8a,armeabi-v7a,armeabi
TARGET_CPU_ABI_LIST_64_BIT := arm64-v8a
TARGET_USES_64_BIT_BINDER := true
TARGET_BOARD_SUFFIX := _64
TARGET_IS_64_BIT := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_VFP := true

# Kernel Parameters
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x03f88000 --tags_offset 0x0df88000 --second_offset 0x00e88000 --cmdline "bootopt=64S3,32N2,64N2 androidboot.selinux=permissive" --base 0x40078000

# Binder
TARGET_USES_64_BIT_BINDER := true

# HWC
MTK_HWC_SUPPORT := yes
MTK_HWC_VERSION := 1.4.1

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1937768448
BOARD_CACHEIMAGE_PARTITION_SIZE := 444596224
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1107296256
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true

# Use prebuilt kernel for now
TARGET_PREBUILT_KERNEL := device/Lenovo/TB3_850F/prebuilt/kernel

# System.prop
TARGET_SYSTEM_PROP := device/Lenovo/TB3_850F/system.prop

# WiFi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM := "/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA := STA
WIFI_DRIVER_FW_PATH_AP := AP
WIFI_DRIVER_FW_PATH_P2P := P2P
BOARD_WLAN_DEVICE := MediaTek

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/Lenovo/TB3_850F/bluetooth

# EGL settings
BOARD_EGL_CFG := device/Lenovo/TB3_850F/configs/egl.cfg
BOARD_EGL_WORKAROUND_BUG_10194508 := true
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_OVERLAY := true
TARGET_USES_OVERLAY := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
MAX_VIRTUAL_DISPLAY_DIMENSION := 1
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 1024*1024

# GPS
#BOARD_GPS_LIBRARIES := true
#BOARD_MEDIATEK_USES_GPS := true

# FM Radio
#FM_50KHZ_SUPPORT := true

# Mediatek flags
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true

# SECCOMP
BOARD_SECCOMP_POLICY += device/Lenovo/TB3_850F/seccomp

# SELinux
BOARD_SEPOLICY_DIRS += device/Lenovo/TB3_850F/sepolicy

# Recovery
TARGET_RECOVERY_FSTAB := device/Lenovo/TB3_850F/recovery.fstab

# Sensors
TARGET_NO_SENSOR_PERMISSION_CHECK := true

# LUN
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file

# Other stuff
MALLOC_SVELTE := true
WITHOUT_CHECK_API := true
