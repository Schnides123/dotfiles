#!/usr/bin/env fish

# sheldon only manages zsh plugins
if type -q zsh; and not type -q sheldon
    cargo install sheldon --locked
end
