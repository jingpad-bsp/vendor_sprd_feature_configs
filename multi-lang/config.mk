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

FEATURES.PRODUCT_LOCALES := \
        en_US \
        af_ZA \
        am_ET \
        ar_EG \
        ar_XB \
        as_IN \
        az_AZ \
        be_BY \
        bg_BG \
        bn_BD \
        bs_BA \
        ca_ES \
        cs_CZ \
        da_DK \
        de_DE \
        el_GR \
        en_AU \
        en_CA \
        en_GB \
        en_IN \
        en_XA \
        es_ES \
        es_US \
        et_EE \
        eu_ES \
        fa_IR \
        fi_FI \
        fr_CA \
        fr_FR \
        gl_ES \
        gu_IN \
        hi_IN \
        hr_HR \
        hu_HU \
        hy_AM \
        in_ID \
        is_IS \
        it_IT \
        iw_IL \
        ja_JP \
        ka_GE \
        kk_KZ \
        km_KH \
        kn_IN \
        ko_KR \
        ky_KG \
        lo_LA \
        lt_LT \
        lv_LV \
        mk_MK \
        ml_IN \
        mn_MN \
        mr_IN \
        ms_MY \
        my_MM \
        nb_NO \
        ne_NP \
        nl_NL \
        or_IN \
        pa_IN \
        pl_PL \
        pt_BR \
        pt_PT \
        ro_RO \
        ru_RU \
        si_LK \
        sk_SK \
        sl_SI \
        sq_AL \
        sr_Latn_RS \
        sr_RS \
        sv_SE \
        sw_TZ \
        ta_IN \
        te_IN \
        th_TH \
        tl_PH \
        tr_TR \
        uk_UA \
        ur_PK \
        uz_UZ \
        vi_VN \
        zh_CN \
        zh_HK \
        zh_TW \
        zu_ZA 

FEATURES.PRODUCT_PACKAGE_OVERLAYS += \
    $(PRODUCT_REVISION_COMMON_CONFIG_PATH)/multi-lang/overlay
