# Call this first so apn list is actually copied
$(call inherit-product, vendor/ev/config/gsm.mk)
$(call inherit-product, device/htc/bravo/full_bravo.mk)

# Inherit some common evervolv stuff.
$(call inherit-product, vendor/ev/config/common_full_phone.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME    := lente_bravo
PRODUCT_BRAND   := htc_wwe
PRODUCT_DEVICE  := bravo
PRODUCT_MODEL   := HTC Desire
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_bravo BUILD_FINGERPRINT=htc_wwe/htc_bravo/bravo:2.3.3/GRI40/96875.1:user/release-keys TARGET_BUILD_TYPE=userdebug BUILD_VERSION_TAGS=release-keys PRIVATE_BUILD_DESC="3.14.405.1 CL96875 release-keys"

#
# Set up the product codename, build version & MOTD.
#
PRODUCT_CODENAME := Lente
PRODUCT_VERSION_DEVICE_SPECIFIC := b2

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for installing Nikez Lente! Credits goes to Evervolv.\n------------------------------------------------\n"

#
# Extra Packages
#
PRODUCT_PACKAGES += \
    Camera 

# Use the n1 stock boot animation until we get a custom evervolv one.
PRODUCT_COPY_FILES += \
    device/htc/bravo/extras/bootanimation.zip:system/media/bootanimation.zip
