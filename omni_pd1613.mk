$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/vivo/pd1613/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata \
    device/vivo/pd1613/kernel:kernel \
    device/vivo/pd1613/fstab.qcom:root/fstab.qcom

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := pd1613
PRODUCT_NAME := omni_pd1613
PRODUCT_BRAND := Vivo
PRODUCT_MODEL := Vivo Y55
PRODUCT_MANUFACTURER := Vivo

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=pd1613
