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

#Plugins of the same operator had been integrated into a single application for easy management.
#So please do not modify this configuration any more.
#Instead, you should read the Operator Plug-in Configuration Manual carefully before you plan to add an operator plugin.
FEATURES.PRODUCT_PACKAGES += \
    SystemUI_sfr_rro \
    Settings_sfr_rro \
    CarrierConfig_sfr_rro \
    DialerSfrOverlays

FEATURES.PRODUCT_PRODUCT_PROPERTIES += \
    ro.carrier = sfr
