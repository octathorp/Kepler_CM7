# Inherit AOSP device configuration for kepler.
$(call inherit-product, device/bq/kepler/full_kepler.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common.mk)

# Include GSM stuff
#$(call inherit-product, vendor/cyanogen/products/gsm.mk)

# Include extra dictionaries for LatinIME
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/dictionaries

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_kepler
PRODUCT_BRAND := bq
PRODUCT_DEVICE := kepler
PRODUCT_MODEL := Kepler
PRODUCT_MANUFACTURER := bq
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=kepler BUILD_ID=GRK39F BUILD_FINGERPRINT=google/soju/crespo:2.3.6/GRK39F/189904:user/release-keys PRIVATE_BUILD_DESC="soju-user 2.3.6 GRK39F 189904 release-keys" BUILD_NUMBER=189904

# Extra RK2918 overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/bq/kepler/overlay

# Release name and versioning
PRODUCT_RELEASE_NAME := Kepler
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

#
# Copy RK2918 specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
