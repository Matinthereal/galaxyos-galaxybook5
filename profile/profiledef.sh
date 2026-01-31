#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="galaxyos"
iso_label="GALAXYOS_$(date +%Y%m)"
iso_publisher="GalaxyOS <https://github.com/yourusername/galaxyos>"
iso_application="GalaxyOS Live/Rescue CD"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-ia32.grub.eltorito' 'uefi-x64.grub.eltorito' 'uefi-ia32.systemd-boot.esp' 'uefi-x64.systemd-boot.esp')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/etc/gshadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
  ["/usr/local/bin/galaxyos-firstboot"]="0:0:755"
  ["/usr/local/bin/fix-samsung-audio"]="0:0:755"
  ["/usr/local/bin/galaxyos-setup"]="0:0:755"
)
