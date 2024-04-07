# Edu-Nix || packages.sh
# --------------------------------
# Bash-script that installs required packages.
#
# Authors: @MaxineToTheStars <https://github.com/MaxineToTheStars>
# ----------------------------------------------------------------

# Shebang
#!/usr/bin/env bash

# Fail on error
set -e

# Download needed packages
apt-get update
apt-get install --assume-yes firmware-linux-free firmware-linux-nonfree intel-microcode kwin-wayland kwin-x11 libegl-mesa0 libgbm1 libgl1-mesa-dri libglapi-mesa libglx-mesa0 libosmesa6 libva2 libxatracker2 mesa-opencl-icd mesa-va-drivers mesa-vulkan-drivers plasma-desktop systemd
