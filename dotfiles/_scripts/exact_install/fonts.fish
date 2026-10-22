#!/usr/bin/env fish

if test (uname) != Darwin
    warn "Can't install fonts onto linux"
    return 0
end

set -l fonts \
    "font-meslo-lg-nerd-font" \
    "font-hack-nerd-font"

for font in $fonts
    brew install --cask --quiet --quiet $font
        and success "install font $font"
        or abort "install font $font"
end
