#!/usr/bin/env fish

# eza is the maintained fork of exa; use it when it's already installed
if not type -q exa; and not type -q eza
    cargo install exa --locked
        or abort "install exa"
end
