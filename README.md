# galaxyos-galaxybook5
# GalaxyOS for Samsung Galaxy Book 5 360

Custom Linux distribution optimized for Samsung Galaxy Book 5 360 (Intel Core Ultra 5 266V).

## Features
- ✅ Samsung ACPI drivers (Fn keys, performance modes, keyboard backlight)
- ✅ 4-speaker audio support (MAX98390 amplifiers)
- ✅ Intel Arc 140V graphics (Mesa 25.0 + Vulkan)
- ✅ S Pen & Touchscreen support
- ✅ 20-hour battery life (TLP optimized)
- ✅ Auto-rotation & Tablet mode
- ✅ LUKS encryption support
- ✅ Calamares graphical installer

## Desktop Environment
**GNOME 45+** (Wayland) - Optimized for touchscreens and 2-in-1 laptops

## Build Instructions
1. Fork this repo
2. Go to Actions → Build GalaxyOS ISO → Run workflow
3. Wait 25 minutes
4. Download ISO from Artifacts
5. Flash to USB with Rufus (Windows) or dd (Linux)

## Installation
1. Boot from USB on Galaxy Book 5 360
2. Try Live environment (everything works immediately)
3. Double-click "Install GalaxyOS"
4. Follow graphical installer
5. Reboot into fully configured system

## Post-Install
Everything is pre-configured, but verify:
- `tlp-stat -b` (shows battery threshold at 80%)
- `cat /sys/firmware/acpi/platform_profile` (performance modes)
- S Pen pressure works in Rnote (pre-installed)

## Credits
- Samsung driver: [Huttysam/samsung-galaxybook-linux-unified](https://github.com/Huttysam/samsung-galaxybook-linux-unified)
- Based on Arch Linux
