# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/home/janl/.local/share/gem/ruby/3.0.0/bin:$PATH"

export GPG_TTY=$(tty)

export FZF_BASE=/usr/bin/fzf
# export FZF_DEFAULT_COMMAND="fzf"
export FZF_DEFAULT_OPTS="--preview='head -n 100 {}' --bind 'ctrl-space:execute(bat {})'"
export DISABLE_FZF_AUTO_COMPLETION="false"
export DISABLE_FZF_KEY_BINDINGS="false"

# aliases
alias cat='bat '
alias ll='ls -al'
alias la='ls -A'
alias l='ls -CF'
alias cls='clear'
alias doc='docker-compose'
alias hig='history | grep'
alias addssh='ssh-add ~/.ssh/manjaro_id_rsa'
alias influxShell='k exec -i -t -n home-mon influx-influxdb-0 /bin/bash'

# terraform
alias tfpl='terraform plan'
alias tfap='terraform apply'
alias tfds='terraform destroy'

# Path to your oh-my-zsh installation.
export ZSH="/home/janl/.oh-my-zsh"

# add autocompletion for kubectl
# source <(kubectl completion zsh)

# change autocompletion
zstyle ':completion:*' matcher-list '' 'l:|=[^_]* r:|=*'

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

# POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_MODE='nerdfont-complete'
ZSH_THEME="powerlevel10k/powerlevel10k"

DEFAULT_USER=janl
POWERLEVEL9K_ALWAYS_SHOW_CONTEXT=true

# powerlevel10k config
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

# prompt elements
POWERLEVEL10K_LEFT_PROMPT_ELEMENTS=(os_icon ssh context dir vcs)
POWERLEVEL10K_RIGHT_PROMPT_ELEMENTS=(status load ip time battery)

# battery  colors
POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND=035
POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND=040
POWERLEVEL9K_BATTERY_LOW_BACKGROUND=009
POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND=011

POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND=015
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND=000
POWERLEVEL9K_BATTERY_LOW_FOREGROUND=000
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND=000

# icon colors
POWERLEVEL9K_OS_ICON_BACKGROUND=032
POWERLEVEL9K_OS_ICON_FOREGROUND=015

# context colors
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND=032
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND=015
POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND=160
POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND=000
POWERLEVEL9K_CONTEXT_SUDO_BACKGROUND=002
POWERLEVEL9K_CONTEXT_SUDO_FOREGROUND=015
POWERLEVEL9K_CONTEXT_REMOTE_BACKGROUND=202
POWERLEVEL9K_CONTEXT_REMOTE_FOREGROUND=000
POWERLEVEL9K_CONTEXT_REMOTE_SUDO_BACKGROUND=203
POWERLEVEL9K_CONTEXT_REMOTE_SUDO_FOREGROUND=000

# dir colors
POWERLEVEL9K_DIR_HOME_BACKGROUND=032
POWERLEVEL9K_DIR_HOME_FOREGROUND=015
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=032
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND=015

# status colors
POWERLEVEL9K_STATUS_OK_BACKGROUND=000
POWERLEVEL9K_STATUS_ERROR_BACKGROUND=000

# time colors
POWERLEVEL9K_TIME_BACKGROUND=032
POWERLEVEL9K_TIME_FOREGROUND=015

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  fzf
  git
  kubectl
  history
  helm
  terraform
  # colorize
  colored-man-pages
  # ansible
  )

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
