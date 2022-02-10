#remove gms/mainline PermissionController for CTA
PRODUCT_PACKAGES_REMOVE := GooglePermissionControllerPrebuilt

#CTA FEATURES
FEATURES.PRODUCT_PRODUCT_PROPERTIES += \
         ro.cta.security.feature=1 \
         ro.usb.support_cta=true

FEATURES.PRODUCT_PACKAGES += \
        CtaSecurityTools \
        framework-res_cta
