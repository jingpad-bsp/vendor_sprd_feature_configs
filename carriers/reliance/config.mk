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

#FEATURES.PRODUCT_LOCALES := en_US bn_BD hi_IN te_IN ta_IN ur_PK gu_IN pa_IN ml_IN kn_IN mr_IN as_ET brx_IN doi_IN kok_IN ks_IN mai_IN mni_IN ne_NP or_IN sa_IN sat_IN sd_IN
FEATURES.PRODUCT_PRODUCT_PROPERTIES += ro.product.locale=en-US

#Plugins of the same operator had been integrated into a single application for easy management.
#So please do not modify this configuration any more.
#Instead, you should read the Operator Plug-in Configuration Manual carefully before you plan to add an operator plugin.
FEATURES.PRODUCT_PACKAGES += \
    Telecom_reliance_rro \
    SprdDialer_reliance_rro \
    framework-res_reliance_rro \
    TeleService_reliance_rro \
    framework-res_reliance_rro \
    Settings_reliance_rro \
    SystemUI_reliance_rro\
    CarrierConfig_reliance_rro

#reliance need video default 15
#FEATURES.PRODUCT_PRODUCT_PROPERTIES += persist.sys.ims.vt_resolution=3

#FEATURES.PRODUCT_PACKAGE_OVERLAYS += \
#    $(PRODUCT_REVISION_COMMON_CONFIG_PATH)/reliance/overlay

FEATURES.PRODUCT_PRODUCT_PROPERTIES += \
    gesture.enable_sos_launch=true
FEATURES.PRODUCT_PRODUCT_PROPERTIES += \
    ro.carrier=reliance \
    persist.sys.ims.vt_resolution=3

