#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="galaxyos"
iso_label="GALAXYOS_$(date +%Y%m)"
iso_publisher="GalaxyOS Team"
iso_application="GalaxyOS for Galaxy Book 5 360"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
# Simplified bootmodes - only systemd-boot (UEFI) and BIOS via syslinux
bootmodes=('uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito' 'bios.syslinux.mbr' 'bios.syslinux.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
file_permissions=()
