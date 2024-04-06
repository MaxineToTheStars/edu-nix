# Edu-Nix || config.sh
# --------------------------------
# Automation script for bootstrapping and configuring the Edu-Nix ISO.
#
# Authors: @MaxineToTheStars <https://github.com/MaxineToTheStars>
# ----------------------------------------------------------------

# Shebang
#!/usr/bin/env bash

# Fail on error
set -e


# Configure and bootstrap
lb config noauto \
--apt apt-get \
--apt-indices false \
--apt-recommends false \
--apt-secure false \
--apt-source-archives true \
--architecture amd64 \
--archive-areas "contrib main non-free non-free-firmware" \
--backports true \
--binary-filesystem ext4 \
--binary-image iso-hybrid \
--bootappend-live "boot=config live splash" \
--bootloaders "grub-efi grub-pc" \
--cache false \
--checksums none \
--clean \
--color \
--debconf-frontend noninteractive \
--debian-installer cdrom \
--debian-installer-distribution bookworm \
--debian-installer-gui true \
--debootstrap-options "--arch=amd64 --include=apt-transport-https,apt-utils,ca-certificates,curl,gpg,wget --variant=minbase" \
--distribution bookworm \
--firmware-binary true \
--firmware-chroot true \
--image-name edu-nix-installer \
--initramfs none \
--initsystem systemd \
--interactive false \
--iso-application Edu-Nix-Installer \
--iso-publisher https://github.com/MaxineToTheStars/edu-nix \
--iso-volume Edu-Nix \
--linux-packages "linux-image linux-headers" \
--memtest memtest86+ \
--parent-archive-areas "contrib main non-free non-free-firmware" \
--parent-debian-installer-distribution bookworm \
--parent-distribution bookworm \
--security true \
--source false \
--system normal \
--updates true \
--win32-loader true \



