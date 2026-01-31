#!/bin/bash

# Make all custom scripts executable (fixes Windows permission issues)
chmod +x /usr/local/bin/fix-samsung-audio
chmod +x /usr/local/bin/galaxyos-firstboot
chmod +x /usr/local/bin/galaxyos-welcome
chmod +x /usr/local/bin/install-samsung-driver

# Enable services
systemctl enable gdm.service
systemctl enable NetworkManager.service
systemctl enable bluetooth.service
systemctl enable galaxyos-firstboot.service

# Set up live user
if ! id -u liveuser > /dev/null 2>&1; then
    useradd -m -G wheel,audio,video,power,input,gamemode -s /bin/bash liveuser
    echo "liveuser:live" | chpasswd
    echo "liveuser ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/liveuser
fi

echo "GalaxyOS Live Environment configured"
