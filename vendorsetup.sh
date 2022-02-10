#!/bin/bash
function aosp_make()
{
    local start_time=$(date +"%s")
    bash $ANDROID_BUILD_TOP/bsp/build/make_for_androidq.sh $@
    if [ $? -ne 0 ]; then
        return 1
    fi

    # save bsp build time cost to out/build_record.txt
    local end_time=$(date +"%s")
    local tdiff=$(($end_time-$start_time))
    echo "bsp_build:$tdiff" > $ANDROID_BUILD_TOP/out/build_record.txt

    _wrap_build $(get_make_command "$@") "$@"
}

if [ -f vendor/sprd/feature_configs/carrier_configs.txt ] ; then
    source vendor/sprd/feature_configs/carrier_configs.txt
fi

function make
{
    # Declare parameters
    local feature_device revision_keys
    local make_parameters
    local build_product_image_only=0
    local dry_run=0
    local ret=$?

    # Parsing parameters
    while [[ $# -gt 0 ]] ;
    do
    case $1 in
    --product_device)
        feature_device="$2"
        shift
        shift
    ;;
    --product_carrier)
        revision_keys="$revision_keys $(parse_revision_key_list $2)"
        shift
        shift
    ;;
    --product_dry-run)
        dry_run=1
        shift
    ;;
    --product_image_only)
        build_product_image_only=1
        shift
    ;;
    *)
        make_parameters="$make_parameters $1"
        shift
    ;;
    esac
    done

    local product_image_exists="$(get_build_var BOARD_PRODUCTIMAGE_PARTITION_SIZE)"
    local super_image_exists="$(get_build_var BOARD_SUPER_PARTITION_SIZE)"
    if [ -z "$product_image_exists" -a -z "$super_image_exists" ] ; then
        if [ $(expr $(echo $revision_keys | wc -w) '>' 1) -eq 1 ] ; then
            echo "Error: can not build more than 1 products without product.img"
            return 1
        fi
    fi

    # lunch if needed, if --unisoc_fc_device xx , will lunch xx otherwise, do nothing
    if [ -n "$feature_device" ] ; then
        _wrap_dry_run $dry_run lunch $feature_device
    fi

    export PRODUCT_SET_CARRIERS=$revision_keys

    # if --unisoc_fc_product_only is set, do not do full build
    if [ $build_product_image_only -ne 1 ] ; then
        local extra_paramters
        if [ -z "$product_image_exists" -a -z "$super_image_exists" -a -n "$revision_keys" ] ; then
            extra_paramters="PRODUCT_SET_REVISION=$(parse_revision_key $revision_keys)"
        fi
        if [ $dry_run -eq 1 ] ; then
            echo make $extra_paramters $make_parameters
        else
            aosp_make $extra_paramters $make_parameters
            ret=$?
            if [ $ret -ne 0 ] ; then
                return $ret
            fi
        fi
    fi

    # product image does not exits, could not make product.img, return 0
    if [ -z "$product_image_exists" -a -z "$super_image_exists" ] ; then
        echo "product image does not exits, could not make product.img"
        return 0
    fi

    local partition_type
    if [ -n "$product_image_exists" ] ; then
        partition_type="productimage"
    else
        if [ -n "$super_image_exists" ] ; then
            partition_type="superimage"
        fi
    fi

    # Build each revision,
    # 1. rm -rf product.img product/
    # 2. make PRODUCT_REVISION="your_revision_list" $partition_type
    # 3. cp $OUT/* $OUT/your_revision_key/. -- for making pac
    for revision_key in $revision_keys
    do
        feature_config_cleanup_ifneeded $dry_run

        # can not wrap dry run for "
        if [ $dry_run -eq 1 ] ; then
            echo make PRODUCT_SET_REVISION=\"$(parse_revision_key $revision_key)\" $partition_type "$make_parameters"
        else
            aosp_make PRODUCT_SET_REVISION="$(parse_revision_key $revision_key)" $partition_type "$make_parameters"
            ret=$?
            if [ $ret -ne 0 ] ; then
                return $ret
            fi
        fi

        feature_config_copy_image_files $dry_run $revision_key
    done

    # if set --product_carrier, make native product.img again for daily build pac
    if [ $(expr $(echo $revision_keys | wc -w) '>' 0) -eq 1 -a $build_product_image_only -ne 1 ] ; then
        feature_config_cleanup_ifneeded $dry_run

        if [ $dry_run -eq 1 ] ; then
            echo make $partition_type "$make_parameters"
        else
            aosp_make $partition_type "$make_parameters"
            ret=$?
            if [ $ret -ne 0 ] ; then
                return $ret
            fi
        fi
    fi
}

# Parsing revision key list, may split them by ',' or ':'
# If you want to add more spliters, open comments and add new spliters
function parse_revision_key_list()
{
    echo $@ | \
        sed -e 's?,? ?g' | \
        sed -e 's?:? ?g' # | \
        #sed -e 's?<new_spliter>? ?g'
}

# Coverting revision key to revisions
function parse_revision_key()
{
#    case $1 in
#    cmcc)
#        echo base cmcc
#    ;;
#    cucc)
#        echo base cucc
#    ;;
#    oversea)
#        echo base oversea
#    ;;
#    *)
#        echo base oversea $1
#    ;;
#    esac
    local list=$(eval "echo \"\${FEATURES_$1}\"")

    if [ -n "$list" ] ; then
        echo "$list"
    else
        echo "base oversea $1"
    fi
}


function feature_config_cleanup_ifneeded()
{
    local dry_run=$1
    _wrap_dry_run $dry_run rm -r $OUT/product $OUT/product.img
}

function feature_config_copy_image_files()
{
    local dry_run=$1
    local revision_key=$2

    _wrap_dry_run $dry_run mkdir -p $OUT/$revision_key/product

    _wrap_dry_run $dry_run cp $OUT/product.img $OUT/$revision_key/.
    _wrap_dry_run $dry_run cp $OUT/super.img $OUT/$revision_key/.
    _wrap_dry_run $dry_run cp $OUT/vbmeta_system.img $OUT/$revision_key/.
    _wrap_dry_run $dry_run cp $OUT/vbmeta_vendor.img $OUT/$revision_key/.
    _wrap_dry_run $dry_run cp -r $OUT/product/* $OUT/$revision_key/product/.
}

function _wrap_dry_run()
{
    local dry_run_enabled="$1"

    shift

    if [ "$dry_run_enabled" -eq 1 ] ; then
        echo "Will run \"$@\""
    else
        $@
    fi

}

# make_with_feature_configs $@
