
# The Spreadtrum Communications Inc. 2015

# This is the top of these features, this feature may
# contain many sub-features, and they may be divided
# and take effects by properties / addons / overlays or
# prebuilts

# You can gather them by build vars as follows:

# properties -> FEATURES.PRODUCT_PROPERTY_OVERRIDES +=
# addons/packages/prebuilts -> FEATURES.PRODUCT_PACKAGES +=
# overlay -> FEATURES.PRODUCT_PACKAGE_OVERLAYS +=
#

# Now, let's get it on as follows

FEATURES.PRODUCT_PRODUCT_PROPERTIES += \
    ro.carrier=ctcc
    ro.product.locale= zh-Hans-CN \
    ro.product.country= CN

FEATURES.PRODUCT_LOCALES := zh_Hans_CN en_US

FEATURES.PRODUCT_PACKAGES += \
    carrierconfig_ctcc_rro \
    TeleService_ctcc_rro \
    SettingsCtccOverlays \
    SystemUI_ctcc_rro \
    SelfRegister \
    framework-res_ctcc_rro \
    NativeLauncherConfigOverlay \
    Messaging_ctcc_rro \
    EngineerCtccOverlays
