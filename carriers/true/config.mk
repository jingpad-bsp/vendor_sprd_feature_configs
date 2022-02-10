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

#Plugins of the same operator had been integrated into a single application for easy management.
#So please do not modify this configuration any more.
#Instead, you should read the Operator Plug-in Configuration Manual carefully before you plan to add an operator plugin.
FEATURES.PRODUCT_PACKAGES += \
    preload\
    Email2_true_rro \
    SprdDialer_true_rro \
    framework-res_true_rro \
    SystemUI_true_rro \
    ims_true_rro \
    TeleService_true_rro \
    Settings_true_rro

#FEATURES.PRODUCT_PACKAGE_OVERLAYS += \
#    vendor/sprd/feature_configs/true/overlay

FEATURES.PRODUCT_PRODUCT_PROPERTIES += \
    ro.carrier=true \
    ro.Thailand.operator=thailand_true
FEATURES.PRODUCT_PACKAGES += \
    DialerTrueOverlays
