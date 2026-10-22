#!/usr/bin/env fish

fish_add_path --prepend --global $DOTFILES_DATA/grc/dot_grc

# The fisher plugin-grc wrappers pass arguments through intact. Upstream
# grc.fish re-parses them with `eval` when output isn't a TTY (pipes, scripts,
# agents), which splits quoted arguments, so only fall back to it.
if not functions -q grc.wrap
    source $DOTFILES_DATA/grc/dot_grc/grc.fish
end
