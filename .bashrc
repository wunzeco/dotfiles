CLICOLOR=1
LSCOLORS=ExFxCxDxBxegedabagaced
HISTSIZE=100000

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
    GIT_PROMPT_THEME=Solarized
    source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi
