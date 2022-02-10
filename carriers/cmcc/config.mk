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
#    vendor/sprd/feature_configs/cmcc/overlay

#Plugins of the same operator had been integrated into a single application for easy management.
#So please do not modify this configuration any more.
#Instead, you should read the Operator Plug-in Configuration Manual carefully before you plan to add an operator plugin.
FEATURES.PRODUCT_PACKAGES += \
    SprdAppBackup \
    SmartcardService \
    UiccTerminal \
    org.simalliance.openmobileapi \
    org.simalliance.openmobileapi.xml \
    SprdGeneralSecurity \
    CustomizedNet \
    Messaging_cmcc_rro \
    Email2_cmcc_rro \
    QuickSearchBox_cmcc_rro \
    carrierconfig_cmcc_rro \
    SystemUI_cmcc_rro \
    TeleService_cmcc_rro \
    framework-res_cmcc_rro \
    sprdcontacts-res_cmcc_rro \
    sprdcontactsprovider-res_cmcc_rro \
    SprdDialer_cmcc_rro \
    Settings_cmcc_rro \
    Telecom_cmcc_rro \
    SprdDeskClock_cmcc_rro \
    NativeLauncherConfigOverlay \
    CmccPlugins


# DM statement start
DM_SUPPORT_ONLY_FOR_USERDEBUG := true

#Dont modify below for DM
DM_SUPPORT := true
ifeq ($(TARGET_BUILD_VARIANT),user)
ifeq ($(strip $(DM_SUPPORT_ONLY_FOR_USERDEBUG)), true)
DM_SUPPORT := false
endif
endif

ifeq ($(strip $(DM_SUPPORT)), true)
FEATURES.PRODUCT_PACKAGES += \
    OpManager
endif
# DM statement end

#FEATURES.PRODUCT_PRODUCT_PROPERTIES += \
#     persist.sys.blacklist=true

#FEATURES.PRODUCT_LOCALES := zh_Hans_CN zh_TW en_US
FEATURES.PRODUCT_PRODUCT_PROPERTIES += ro.product.locale=zh-Hans-CN

#ifneq ($(strip $(BOOTANIMATION_SCREEN_SIZE)),)
#    FEATURES.PRODUCT_COPY_FILES += \
#        vendor/sprd/operator/cmcc/configs/res/boot/bootanimation_cmcc_4g_$(BOOTANIMATION_SCREEN_SIZE).zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip \
#        vendor/sprd/operator/cmcc/configs/res/boot/bootsound_4g.mp3:$(TARGET_COPY_OUT_PRODUCT)/media/bootsound.mp3 \
#        vendor/sprd/operator/cmcc/configs/res/boot/shutdownanimation_cmcc_4g_$(BOOTANIMATION_SCREEN_SIZE).zip:$(TARGET_COPY_OUT_PRODUCT)/media/shutdownanimation.zip \
#        vendor/sprd/operator/cmcc/configs/res/boot/shutdownsound_4g.mp3:$(TARGET_COPY_OUT_PRODUCT)/media/shutdownsound.mp3
#else
#    FEATURES.PRODUCT_COPY_FILES += \
#        vendor/sprd/operator/cmcc/configs/res/boot/bootanimation_cmcc_4g_hd.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip \
#        vendor/sprd/operator/cmcc/configs/res/boot/bootsound_4g.mp3:$(TARGET_COPY_OUT_PRODUCT)/media/bootsound.mp3 \
#        vendor/sprd/operator/cmcc/configs/res/boot/shutdownanimation_cmcc_4g_hd.zip:$(TARGET_COPY_OUT_PRODUCT)/media/shutdownanimation.zip \
#        vendor/sprd/operator/cmcc/configs/res/boot/shutdownsound_4g.mp3:$(TARGET_COPY_OUT_PRODUCT)/media/shutdownsound.mp3
#endif

FEATURES.PRODUCT_PRODUCT_PROPERTIES += \
    ro.carrier=cmcc \
    persist.sys.blacklist=true

# add for cta feature
FEATURES.PRODUCT_PRODUCT_PROPERTIES += \
    ro.usb.support_cta=true

FEATURES.PRODUCT_PACKAGES += \
    DialerCMCCOverlays \
    ProvisionCmccOverlays
