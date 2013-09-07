USE_CAMERA_STUB := false

# Gps
#BOARD_USES_QCOM_GPS := true
#BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := msm8960

# Flags for Krait CPU
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DQCOM_BSP -D__ARM_USE_PLD -D__ARM_CACHE_LINE_SIZE=64

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
TARGET_USES_QCOM_BSP := true

# Include path
TARGET_SPECIFIC_HEADER_PATH := device/acer/swing/include

BOARD_VENDOR := acer

# Bootloader
TARGET_NO_BOOTLOADER := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/acer/swing
#TARGET_PREBUILT_KERNEL := device/acer/swing/prebuilt/kernel
TARGET_KERNEL_CONFIG := spacecaker_defconfig

# Platform
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_ARCH := arm

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_SMP := true

# Krait optimizations
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64

# Preload bootanimation
TARGET_BOOTANIMATION_PRELOAD := true

# Audio
TARGET_QCOM_AUDIO_VARIANT := caf
TARGET_USES_QCOM_COMPRESSED_AUDIO := true

# Audio
BOARD_USES_ALSA_AUDIO := true
TARGET_USES_QCOM_MM_AUDIO := true
BOARD_AUDIO_EXPECTS_MIN_BUFFERSIZE := true
BOARD_AUDIO_CAF_LEGACY_INPUT_BUFFERSIZE := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/acer/swing/bluetooth

# FM radio
BOARD_HAVE_QCOM_FM := true
COMMON_GLOBAL_CFLAGS += -DQCOM_FM_ENABLED

# Graphics
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK
USE_OPENGL_RENDERER := true
TARGET_NO_HW_VSYNC := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
ARCH_ARM_HAVE_NEON := TRUE
BOARD_EGL_CFG := device/acer/swing/configs/egl.cfg

# Architecture
TARGET_GLOBAL_CFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -D__ARM_USE_PLD -D__ARM_CACHE_LINE_SIZE=64

# Krait optimizations
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET      := true
TARGET_KRAIT_BIONIC_PLDOFFS   := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH  := 64
TARGET_KRAIT_BIONIC_PLDSIZE   := 64

# Wifi Driver
CONFIG_DRIVER_NL80211 := true
BOARD_WLAN_DEVICE                := qcwcn
WIFI_EXT_MODULE_NAME             := cfg80211
WIFI_EXT_MODULE_PATH             := "/system/lib/modules/cfg80211.ko"
WIFI_DRIVER_MODULE_NAME          := wlan
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/wlan.ko"

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := swing

# Kernel
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGE_SIZE := 2048
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3

# Use libril in the device tree
BOARD_PROVIDES_LIBRIL := false

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# NFC
BOARD_HAVE_NFC := true

#Display
TARGET_QCOM_DISPLAY_VARIANT := caf
USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
TARGET_USES_C2D_COMPOSITION := true

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776704
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1744829440
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2550136320
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_VOLD_MAX_PARTITIONS := 36

# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true
# Use power button as select in recovery
BOARD_HAS_NO_SELECT_BUTTON := true
