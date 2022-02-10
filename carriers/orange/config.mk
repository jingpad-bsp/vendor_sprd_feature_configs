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
#    vendor/sprd/feature_configs/orange/overlay

#Plugins of the same operator had been integrated into a single application for easy management.
#So please do not modify this configuration any more.
#Instead, you should read the Operator Plug-in Configuration Manual carefully before you plan to add an operator plugin.
FEATURES.PRODUCT_PACKAGES += \
    Stk_orange_rro \
    Messaging_orange_rro \
    framework-res_orange_rro\
    SprdDialer_orange_rro \
    TeleService_orange_rro \
    Settings_orange_rro \
    SystemUI_orange_rro

FEATURES.PRODUCT_PRODUCT_PROPERTIES += \
    ro.carrier=orange

FEATURES.PRODUCT_PACKAGES += \
    DialerOrangeOverlays
