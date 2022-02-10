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

#move storage prop to /system
#$(info STORAGE_PRIMARY $(STORAGE_PRIMARY))
ifeq ($(STORAGE_ORIGINAL), true)
  FEATURES.PRODUCT_PRODUCT_PROPERTIES += \
      persist.storage.type=2 \
      sys.internal.emulated=1
else
  FEATURES.PRODUCT_PRODUCT_PROPERTIES += \
      sys.internal.emulated=1
  ifeq ($(STORAGE_PRIMARY), internal)
    FEATURES.PRODUCT_PRODUCT_PROPERTIES += \
        persist.storage.type=2
  endif
  ifeq ($(STORAGE_PRIMARY), external)
    FEATURES.PRODUCT_PRODUCT_PROPERTIES += \
        ro.vold.primary_physical=1 \
        persist.storage.type=1
  endif
endif


FEATURES.PRODUCT_PRODUCT_PROPERTIES += \
   persist.netmon.linger=10000

# FEATURES.PRODUCT_PACKAGE_OVERLAYS += \
#     $(PRODUCT_REVISION_COMMON_CONFIG_PATH)/base/overlay

ifeq ($(strip $(PRODUCT_GO_DEVICE)),true)
FEATURES.PRODUCT_PACKAGES += \
    OtaUpdate \
    SupportCPVersionDisplay \
    LimitOwnerInfoLength \
    FdnService \
    PressBrightnessPlugin \
    BuildNumberSettings \
    CbCustomSetting \
    SmilPlayer \
    FastScrollBarSupportAddon \
    ContactsDefaultContactAddon \
    RingBackTonePlugin \
    StorageClearManager \
    framework-res_navbar_rro
else
FEATURES.PRODUCT_PACKAGES += \
    OtaUpdate \
    SupportCPVersionDisplay \
    LimitOwnerInfoLength \
    FdnService \
    PressBrightnessPlugin \
    BuildNumberSettings \
    CbCustomSetting \
    SmilPlayer \
    FastScrollBarSupportAddon \
    ContactsDefaultContactAddon \
    SystemUIAudioProfile \
    NavigationBarDynamicSupport\
    RingBackTonePlugin \
    StorageClearManager \
    framework-res_navbar_rro
endif

FEATURES.PRODUCT_PACKAGES += \
    embmsd

ifneq ($(wildcard vendor/sprd/generic/misc/launchercfg),)
    include $(wildcard vendor/sprd/generic/misc/launchercfg/LauncherFeatures.mk)
endif
