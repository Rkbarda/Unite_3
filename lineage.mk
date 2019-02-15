# Full base
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Needed stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Call device specific makefile
$(call inherit-product, device/Micromax/Unite 3/lineage_Unite 3.mk)

LOCAL_PATH := device/Micromax/Unite 3

# Common CM stuff
CM_BUILD := Unite 3

$(call inherit-product, vendor/cm/config/common_full_phone.mk)

#PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=7.1.2/MRA58M/2280749:user/release-keys PRIVATE_BUILD_DESC="Unite 3-user 7.1.2 MRA58M 2280749 release-keys"

PRODUCT_NAME := lineage_Unite 3
PRODUCT_DEVICE := Unite 3
PRODUCT_BRAND := Micromax
PRODUCT_MANUFACTURER := Mediatek
PRODUCT_MODEL := Zera F

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="Unite 3"

# Correct bootanimation size for the screen
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/root/init.Unite 3.rc:root/init.Unite 3.rc \
    $(LOCAL_PATH)/rootdir/root/fstab.Unite 3:root/fstab.Unite 3

# Release name
PRODUCT_RELEASE_NAME := Zera F
