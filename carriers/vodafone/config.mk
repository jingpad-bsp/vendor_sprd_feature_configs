# The Spreadtrum Communications Inc. 2015

# This is the top of this features, this feature may
# contains much sub-features, and they may divided
# and take effects by properties / addons / overlays or
# prebuilts

# You can gather them by build vars as follows:

# Now, let's get it on as follows

#Plugins of the same operator had been integrated into a single application for easy management.
#So please do not modify this configuration any more.
#Instead, you should read the Operator Plug-in Configuration Manual carefully before you plan to add an operator plugin.
FEATURES.PRODUCT_PACKAGES += \
    framework-res_vodafone_rro \
    Stk_vodafone_rro \
    Messaging_vodafone_rro \
    Email2_vodafone_rro \
    Omacp_vodafone_rro\
    SprdDialer_vodafone_rro \
    Settings_vodafone_rro \
    TeleService_vodafone_rro \
    CarrierConfig_vodafone_rro \
    SystemUI_vodafone_rro \
    SettingsProvider_vodafone_rro

#FEATURES.PRODUCT_LOCALES := en_US
FEATURES.PRODUCT_PRODUCT_PROPERTIES += ro.product.locale=en-US

FEATURES.PRODUCT_PRODUCT_PROPERTIES += \
    ro.carrier=vodafone

#enable vodafone feature
FEATURES.PRODUCT_PRODUCT_PROPERTIES += \
    ro.vodafone.feature.enable=true

FEATURES.PRODUCT_COPY_FILES += \
    vendor/sprd/feature_configs/carriers/vodafone/animation/bootanimation.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip

#vodafone softap maxnum feature
FEATURES.PRODUCT_PRODUCT_PROPERTIES += \
    persist.wifi.softap.reqstanum=5

FEATURES.PRODUCT_PACKAGES += \
    DialerVodafoneOverlays
