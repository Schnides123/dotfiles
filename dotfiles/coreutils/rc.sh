if ! type "brew" &> /dev/null; then
  # brew not installed (e.g. Linux, which already has GNU tools). exit silently
  return
fi

# Use coreutils gnubins first in PATH to override built-in macOS versions which
# # support non-standard flags
export PATH="$HOMEBREW_PREFIX/opt/grep/libexec/gnubin":$PATH

# having problems with uname -m reporting x86 on new windows
# with zsh for some reason when we use this
# export PATH="$(brew --prefix coreutils)/libexec/gnubin":PATH
export MANPATH="$HOMEBREW_PREFIX/opt/coreutils/libexec/gnuman":$MANPATH
