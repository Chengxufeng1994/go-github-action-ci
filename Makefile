GO := go

.PHONY: install.gsemver
install.gsemver:
	@$(GO) install github.com/arnaud-deprez/gsemver@latest

.PHONY: install.git-chglog
install.git-chglog:
	@$(GO) install github.com/git-chglog/git-chglog/cmd/git-chglog@latest