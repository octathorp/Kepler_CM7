$(call inherit-product, $(SRC_TARGET_DIR)/product/small_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/bq/kepler/device-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/bq/kepler/overlay

PRODUCT_COPY_FILES += \
    device/bq/kepler/init.rc:root/init.rc

PRODUCT_COPY_FILES += \
    device/bq/kepler/init.d/10pointercal:system/etc/init.d/10pointercal \
    device/bq/kepler/etc/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/bq/kepler/etc/vold.fstab:system/etc/vold.fstab \
    device/bq/kepler/etc/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    device/bq/kepler/rockchip_bq27510.dffs:system/etc/rockchip_bq27510.dffs \
    device/bq/kepler/rockchip_bq27510.bqfs:system/etc/rockchip_bq27510.bqfs \
    device/bq/kepler/init_battery.sh:root/init_battery.sh

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_kepler
PRODUCT_DEVICE := kepler
