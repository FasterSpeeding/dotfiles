# Set Neovim as global editor
[[ "$(command -v nvim)" ]] && export EDITOR="$(command -v nvim)"

# Disable telemetry
export BINSTALL_DISABLE_TELEMETRY="true"
export HOMEBREW_NO_ANALYTICS="1"
export DOTFILES_DIR="$HOME/"
export DOTFILE_SERVICES="${DOTFILE_SERVICES:-},"
