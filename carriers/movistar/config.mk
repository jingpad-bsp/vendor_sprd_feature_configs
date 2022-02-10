# The Spreadtrum Communications Inc. 2015

# This is the top of this features, this feature may
# contains much sub-features, and they may divided
# and take effects by properties / addons / overlays or
# prebuilts

# You can gather them by build vars as follows:

# properties -> FEATURES.PRODUCT_PROPERTY_OVERRIDES +=
# addons/packages/prebuilts -> FEATURES.PRODUCT_PACKAGES +=
# overlay -> FEATURES.PRODUCT_PACKAGE_OVERLAYS +=
#

# Now, let's get it on as follows

# Please do not modify this configuration easily unless you make sure
# the Plug-in you add is a general one which means it will be used for
# at least two operators. If not, please just add your Plug-in into the
# 'Orange-plugins' directly!

#FEATURES.PRODUCT_PACKAGE_OVERLAYS += \
#    vendor/sprd/feature_configs/movistar/overlay

FEATURES.PRODUCT_PRODUCT_PROPERTIES += \
    ro.carrier=movistar

#FEATURES.PRODUCT_LOCALES :=en_US es_US
FEATURES.PRODUCT_PRODUCT_PROPERTIES += ro.product.locale=en-US

FEATURES.PRODUCT_PACKAGES += \
    framework-res_movistar_rro \
    Stk_movistar_rro \
    CellBroadcastReceiver_movistar_rro

FEATURES.PRODUCT_COPY_FILES += \
    vendor/sprd/feature_configs/carriers/movistar/animation/bootanimation.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip \
    vendor/sprd/feature_configs/carriers/movistar/animation/bootsound.mp3:$(TARGET_COPY_OUT_PRODUCT)/media/bootsound.mp3 \
    vendor/sprd/feature_configs/carriers/movistar/animation/shutdownanimation.zip:$(TARGET_COPY_OUT_PRODUCT)/media/shutdownanimation.zip \
    vendor/sprd/feature_configs/carriers/movistar/animation/shutdownsound.mp3:$(TARGET_COPY_OUT_PRODUCT)/media/shutdownsound.mp3
