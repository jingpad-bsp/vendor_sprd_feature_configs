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
#FEATURES.PRODUCT_PACKAGE_OVERLAYS += \
#    $(PRODUCT_REVISION_COMMON_CONFIG_PATH)/mtn/overlay
FEATURES.PRODUCT_PACKAGES += \
    SprdDialer_mtn_rro \
    Telecom_mtn_rro \
    Settings_mtn_rro \
    framework-res_mtn_rro


FEATURES.PRODUCT_PRODUCT_PROPERTIES += \
    ro.carrier=mtn

