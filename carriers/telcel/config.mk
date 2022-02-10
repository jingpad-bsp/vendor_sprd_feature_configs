# The Spreadtrum Communications Inc. 2015

# This is the top of this features, this feature may
# contains much sub-features, and they may divided
# and take effects by properties / addons / overlays or
# prebuilts
#FEATURES.PRODUCT_PACKAGE_OVERLAYS += \
#    vendor/sprd/feature_configs/telcel/overlay

#Plugins of the same operator had been integrated into a single application for easy management.
#So please do not modify this configuration any more.
#Instead, you should read the Operator Plug-in Configuration Manual carefully before you plan to add an operator plugin.
FEATURES.PRODUCT_PACKAGES += \
    Stk_telcel_rro \
    Messaging_telcel_rro \
    CellBroadcastReceiver_telcel_rro \
    framework-res_telcel_rro\
    SprdDialer_telcel_rro\
    Telecom_telcel_rro \
    TeleService_telcel_rro \
    Settings_telcel_rro \
    SystemUI_telcel_rro \
    CarrierConfig_telcel_rro

FEATURES.PRODUCT_PRODUCT_PROPERTIES += \
    ro.carrier=telcel

FEATURES.PRODUCT_PRODUCT_PROPERTIES += persist.sys.ims.visibility=true

#FEATURES.PRODUCT_LOCALES := es_US pt_BR en_US
FEATURES.PRODUCT_PRODUCT_PROPERTIES += ro.product.locale=es-US
