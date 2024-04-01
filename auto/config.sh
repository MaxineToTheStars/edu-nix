# Shebang
#!/usr/bin/env bash

# Fail on error
set -e

# Generate image configuration
lb config noauto \
--apt apt-get \
--apt-indices false \
--apt-recommends false \
--apt-secure true \
--architecture amd64 \
--archive-areas 'contrib main non-free non-free-firmware' \
--backports true \
--binary-filesystem ext4 \
--binary-image iso-hybrid \
--bootappend-live "boot=live config splash" \
--cache true \
--checksums sha256 \
--clean \
--color \
--debconf-frontend noninteractive \
--debian-installer live \
--debian-installer-distribution bookworm \
--debian-installer-gui true \
--debootstrap-options "--include=apt-transport-https,ca-certificates,openssl --variant=minbase" \
--distribution bookworm \
--firmware-binary true \
--firmware-chroot true \
--initramfs live-boot \
--initsystem systemd \
--iso-application Edu-Nix \
--iso-publisher https://github.com/MaxineToTheStars/edu-nix \
--iso-volume Edu-Nix \
--linux-packages "linux-image linux-headers" \
--memtest memtest86+ \
--security true \
--source true \
--updates true \
--win32-loader true \
