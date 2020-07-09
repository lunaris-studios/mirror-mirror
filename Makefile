# MAKEFILE
#
# @author      Sam Craig <sam@lunaris.io>
# @link        https://github.com/lunaris-studios/mirror-template
# ------------------------------------------------------------------------------

.EXPORT_ALL_VARIABLES:

# Display general help about this command
.PHONY: help
help:
	@echo ""
	@echo "$(PROJECT) Makefile."
	@echo ""
	@echo "The following commands are available:"
	@echo ""
	@echo "    make update              : Update all project dependencies"
	@echo "    make update-nix          : Update niv dependencies"
	@echo "    make update-npm          : Update npm dependencies"
	@echo ""

# Alias for help target
all: help
	@$(MAKE) -s ".env.yaml"

# === Entities ===

# URL of the remote repository
REPOSITORY := https://github.com/lunaris-studios/mirror-template

# Project owner
OWNER := lunaris-studios

# Project name
PROJECT := mirror-template

# Project version
VERSION := 0.0.0

# === Shell Configuration ===

SHELL := /bin/bash

UNAME_OS := $(shell uname -s | tr '[:upper:]' '[:lower:]')
UNAME_ARCH := $(shell uname -m | tr '[:upper:]' '[:lower:]')

TMP_BASE := vendor
TMP := $(TMP_BASE)
TMP_BIN = $(TMP)/bin
TMP_VERSIONS := $(TMP)/versions

# === Update ===

# Update all project dependencies
.PHONY: update
update:
	@$(MAKE) -s update-niv
	@$(MAKE) -s update-npm	

# Update niv dependencies
.PHONY: update-niv
update-niv:
	@niv update

# Update npm packages
.PHONY: update-npm
update-npm:
	@npm run update && \
		npm install