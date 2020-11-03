#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/bootdevice/by-name/recovery:134217728:7010861a5fde2dd84490fbaa178c03d7e0bd39d0; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/bootdevice/by-name/boot:134217728:d4a06bf47c63a2800384719279c2a21cdefe2ce8 \
          --target EMMC:/dev/block/bootdevice/by-name/recovery:134217728:7010861a5fde2dd84490fbaa178c03d7e0bd39d0 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
