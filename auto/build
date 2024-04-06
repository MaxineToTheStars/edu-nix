# Edu-Nix || build.sh
# --------------------------------
# Automation script for building the Edu-Nix ISO.
#
# Authors: @MaxineToTheStars <https://github.com/MaxineToTheStars>
# ----------------------------------------------------------------

# Shebang
#!/usr/bin/env bash

# Fail on error
set -e

# Build
lb build noauto "${@}" 2>&1 | tee build.log
