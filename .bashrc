CLICOLOR=1
LSCOLORS=ExFxCxDxBxegedabagaced
HISTSIZE=100000

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
    GIT_PROMPT_THEME=Solarized
    source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi

#JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_75.jdk/Contents/Home
JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home"

if [ -d "$HOME/bin/terraform" ]; then
	export PATH="$PATH:$HOME/bin/terraform" # Add Terraform to PATH 
fi
