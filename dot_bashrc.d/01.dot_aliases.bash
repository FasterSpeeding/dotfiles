# Misc aliases
if [[ "$(command -v bat)" ]]
then
    alias cat='bat --style=plain --pager=never'
fi

if [[ "$(command -v ug)" ]]
then
    alias grep='ug'
    alias egrep='ug -E'
    alias fgrep='ug -F'
    alias xzgrep='ug -z'
    alias xzegrep='ug -zE'
    alias xzfgrep='ug -zF'
fi

# Add some eza aliases
if [[ "$(command -v eza)" ]]
then
    alias l.='eza -d .*'
    alias l1='eza -1'
    alias ll='eza -l --icons=auto --group-directories-first'
    alias ls='eza'
fi

# Sudo alias hack to allow sudo to call user-defined aliases.
alias sudo='sudo '
