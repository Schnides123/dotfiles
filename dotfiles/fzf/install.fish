#!/usr/bin/env fish

# Make sure fzf build doesn't override our tool version
if type -q asdf; and asdf list golang &> /dev/null
    asdf shell golang (asdf latest golang)
end

# Rebuild fzf from source if necessary
pushd $DOTFILES_DATA/fzf/dot_fzf

make
    or abort "failed to build fzf"

make install
    or abort "failed to install fzf"

popd

# brew install -q fzf

# set fzfPath (brew --prefix fzf)
# $fzfPath/install --xdg --completion --key-bindings --no-update-rc 1> /dev/null
