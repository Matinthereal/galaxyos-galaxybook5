#!/bin/bash

set -e -u

# Enable services
systemctl enable gdm.service
systemctl enable NetworkManager.service
systemctl enable bluetooth.service
systemctl enable galaxyos-firstboot.service
systemctl enable samsung-audio-fix.service

# Enable Calamares installer for LiveCD
systemctl enable calamares.service || true

# Set up live user
if ! id -u liveuser > /dev/null 2>&1; then
    useradd -m -G wheel,audio,video,power,input,gamemode -s /bin/bash liveuser
    echo "liveuser:live" | chpasswd
    echo "liveuser ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/liveuser
fi

# Set hostname
echo "galaxyos-live" > /etc/hostname

# Load Samsung driver on boot if available
echo "samsung-galaxybook" >> /etc/modules-load.d/galaxybook.conf

# Fix permissions
chmod +x /usr/local/bin/*

# Ensure audio fix runs in live environment
/usr/local/bin/fix-samsung-audio || true

# Pre-configure some apps for Galaxy Book
mkdir -p /etc/skel/.config/autostart
cat > /etc/skel/.config/autostart/welcome.desktop << 'EOF'
[Desktop Entry]
Type=Application
Name=GalaxyOS Welcome
Exec=/usr/local/bin/galaxyos-welcome
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
EOF

echo "GalaxyOS Live Environment configured"
