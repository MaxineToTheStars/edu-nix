# Shebang
#!/usr/bin/env make

# Edu-Nix || Makefile
# --------------------------------
# Makefile for building Edu-Nix.
#
# Authors: @MaxineToTheStars <https://github.com/MaxineToTheStars>
# ----------------------------------------------------------------

# Change the default shell to bash
SHELL := /usr/bin/env bash

# Download prerequisite packages build Edu-Nix
all: install_prerequisite_packages build

# Install prerequisite packages
.PHONY: install_prerequisite_packages
install_prerequisite_packages:
	sudo apt-get install --assume-yes apt-transport-https apt-utils build-essential ca-certificates curl gpg live-build make openssl wget

# Clean the build directory
.PHONY: clean
clean:
	sudo lb clean --all
	rm --recursive --verbose --force config/packages.chroot/

# Build the live system image
.PHONY: build
build:
	sudo lb clean --all
	sudo lb config
	sudo lb build

# Help command
.PHONY: help
help:
	@grep '^.PHONY: .* #' Makefile | sed 's/\.PHONY: \(.*\) # \(.*\)/\1	\2/' | expand -t20
