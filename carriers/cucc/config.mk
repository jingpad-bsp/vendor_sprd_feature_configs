
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

#FEATURES.PRODUCT_PACKAGE_OVERLAYS += \
#    vendor/sprd/feature_configs/cucc/overlay

#Plugins of the same operator had been integrated into a single application for easy management.
#So please do not modify this configuration any more.
#Instead, you should read the Operator Plug-in Configuration Manual carefully before you plan to add an operator plugin.
FEATURES.PRODUCT_PACKAGES += \
    Stk_cucc_rro \
    Messaging_cucc_rro \
    Launcher3_cucc_rro \
    carrierconfig_cucc_rro \
    SystemUI_cucc_rro \
    TeleService_cucc_rro \
    framework-res_cucc_rro \
    SprdDialer_cucc_rro \
    Settings_cucc_rro\
    Telecom_cucc_rro

#SPRD: bug 828499
FEATURES.PRODUCT_PRODUCT_PROPERTIES += \
    ro.launcher.allapp.customize=true \

FEATURES.PRODUCT_PRODUCT_PROPERTIES += persist.sys.ims.visibility=true
FEATURES.PRODUCT_PRODUCT_PROPERTIES += \
    ro.carrier=cucc
FEATURES.PRODUCT_PACKAGES += \
    DialerCuccOverlays
