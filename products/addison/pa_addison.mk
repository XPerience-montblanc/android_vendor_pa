ifeq (pa_addison,$(TARGET_PRODUCT))

$(call inherit-product, device/motorola/addison/full_addison.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
include vendor/pa/main.mk

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product-if-exists, vendor/motorola/addison/addison-vendor.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920
TARGET_BOOT_ANIMATION_RES := 1080

## Device identifier. This must come after all inclusions
PRODUCT_NAME := pa_addison
PRODUCT_DEVICE := addison
PRODUCT_NAME := pa_addison
PRODUCT_BRAND := motorola
PRODUCT_MANUFACTURER := motorola


PRODUCT_SYSTEM_PROPERTY_BLACKLIST := ro.product.model

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=motorola/addison/addison:7.0/NPN25.137-24-1/1:user/release-keys \
    PRIVATE_BUILD_DESC="addison-user 7.0 NPN25.137-24-1 1 release-keys" \
    PRODUCT_NAME="Moto Z Play"

endif
