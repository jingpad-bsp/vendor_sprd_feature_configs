# The Spreadtrum Communications Inc. 2015

# This is the top of this features, this feature may
# contains much sub-features, and they may divided
# and take effects by properties / addons / overlays or
# prebuilts

#Plugins of the same operator had been integrated into a single application for easy management.
#So please do not modify this configuration any more.
#Instead, you should read the Operator Plug-in Configuration Manual carefully before you plan to add an operator plugin.
FEATURES.PRODUCT_PACKAGES += \
    Stk_claro_rro \
    Messaging_claro_rro \
    SprdDialer_claro_rro \
    SystemUI_claro_rro \
    Telecom_claro_rro \
    framework-res_claro_rro \
    Settings_claro_rro


FEATURES.PRODUCT_PRODUCT_PROPERTIES += \
    ro.carrier=claro

#FEATURES.PRODUCT_PACKAGE_OVERLAYS += \
#    vendor/sprd/feature_configs/claro/overlay

#disable recovery
FEATURES.PRODUCT_PRODUCT_PROPERTIES += persist.radio.dataconn.recovery=0

#FEATURES.PRODUCT_LOCALES :=en_US es_US
FEATURES.PRODUCT_PRODUCT_PROPERTIES += ro.product.locale=en-US

FEATURES.PRODUCT_PRODUCT_PROPERTIES += ro.com.android.dataroaming=true

FEATURES.PRODUCT_PACKAGES += \
    DialerClaroOverlays
