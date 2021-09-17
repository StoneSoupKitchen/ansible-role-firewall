PROJECT_ROOT := $(shell git rev-parse --show-toplevel)

#//////////////////////////////////////////////////////////////////////////////
# VARIABLES
#//////////////////////////////////////////////////////////////////////////////

ANSIBLE_LINT = pipenv run ansible-lint
MOLECULE = pipenv run molecule

MOLECULE_DISTRO ?= debian10

#//////////////////////////////////////////////////////////////////////////////
# TASKS
#//////////////////////////////////////////////////////////////////////////////

.DEFAULT_GOAL: help

.PHONY: lint
lint: ## Run ansible-lint
	@echo "--- Running ansible-lint"
	@$(ANSIBLE_LINT)

.PHONY: test
test: ## Run molecule tests
	@echo "--- Running molecule tests"
	@MOLECULE_DISTRO=$(MOLECULE_DISTRO) $(MOLECULE) test

.PHONY: help
help: ## Show this help message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "; printf "\nUsage:\n\n"}; {printf "  %-15s %s\n", $$1, $$2}'
	@echo

.DEFAULT_GOAL := help

