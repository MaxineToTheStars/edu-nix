# Shebang
#!/usr/bin/env bash

# Fail on error
set -e

# Clean the build
lb clean noauto "$@"

# Remove any logging
rm --force binary.log prepare.log
