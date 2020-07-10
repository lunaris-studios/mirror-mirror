# MAKEFILE
#
# @author      {{ `{{ Author }}` }} <{{ `{{ AuthorEmail }}` }}>
# @link        https://github.com/{{ `{{ Organization }}` }}/{{ `{{ Project }}` }}
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
	# <ADD COMMANDS HERE>
	@echo ""

# === Entities ===

# URL of the remote repository
REPOSITORY := https://github.com/{{ `{{ Organization }}` }}/{{ `{{ Project }}` }}

# Project owner
OWNER := {{ `{{ Organization }}` }}

# Project name
PROJECT := {{ `{{ Project }}` }}

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