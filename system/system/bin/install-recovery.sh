#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/bootdevice/by-name/recovery:134217728:028164bb1a58911758c8c32b79794a36a6bd61ee; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/bootdevice/by-name/boot:134217728:091e795291afe0e3d7dd594bfea5508783a42122 \
          --target EMMC:/dev/block/bootdevice/by-name/recovery:134217728:028164bb1a58911758c8c32b79794a36a6bd61ee && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
