#!/system/bin/sh

if [ $# -gt 0 ]; then
    first_api_level=$1
    if [ $first_api_level -lt 31 ];then
        /system/bin/chown -R theme:theme /data/system/theme
        /system/bin/chown -R theme:theme /data/system/theme_magic
        /system/bin/chmod -R 775 /data/system/theme_magic/tempIcon
    fi
fi
