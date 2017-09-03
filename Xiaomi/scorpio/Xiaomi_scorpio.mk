LOCAL_PATH := device/Xiaomi/scorpio

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, build/target/product/full.mk)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel \
	#$(LOCAL_PATH)/dt.img:dt.img \

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := scorpio
PRODUCT_NAME := Xiaomi_scorpio
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi Note 2
PRODUCT_MANUFACTURER := Xiaomi