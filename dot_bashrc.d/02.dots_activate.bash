SHELL="bash"

eval "$(mise activate bash)"

[[ "$(command -v direnv)" ]] && eval "$(direnv hook "$SHELL")"

mise_preexec_ver="$(mise tool http:bash-preexec --active --json | jq -r ".[0] | select(.!=null)")"
preexec_paths=(
    "/etc/profile.d/bash-preexec.sh"
    "/usr/share/bash-prexec"
    "/usr/share/bash-prexec.sh"
    "${HOMEBREW_PREFIX:-}/etc/profile.d/bash-preexec.sh"
    "$HOME/.local/share/mise/installs/http-bash-preexec/$mise_preexec_ver/bash-preexec-$mise_preexec_ver/bash-preexec.sh"
)

for path in "${preexec_paths[@]}"
do
    if [[ -f "$path" ]]
    then
        source "$path"
        break
    fi
done

[[ "$(command -v atuin)" ]] && eval "$(atuin init "$SHELL" ${ATUIN_INIT_FLAGS:-})"
[[ "$(command -v starship)" ]] && eval "$(starship init "$SHELL")"
[[ "$(command -v zoxide)" ]] && eval "$(zoxide init "$SHELL")"
