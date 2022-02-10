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

USE_PROJECT_SEC := true

FEATURES.PRODUCT_PRODUCT_PROPERTIES += \
        persist.support.securetest=1 \
        service.project.sec=1

FEATURES.PRODUCT_PACKAGES += \
        framework-res_ccsa \
        Provision_ccsa \
        CCSA

FEATURES.PRODUCT_LOCALES := zh_Hans_CN zh_TW en_US

FEATURES.PRODUCT_PROPERTY_OVERRIDES += \
        persist.sys.usb.security_lock=true

FEATURES.PRODUCT_COPY_FILES += \
        frameworks/base/core/java/com/sprd/telephonesec.db:/system/etc/telephonesec.db
