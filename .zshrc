# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/${USER}/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# This will hide the insecure directory warning
ZSH_DISABLE_COMPFIX=true

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
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# Theme options
POWERLEVEL9K_MODE='nerdfont-complete'

zsh_react_version() {
    if test -f 'package.json'; then
         local version=$(npm view react version)

	 echo "\ue7ba $version"
    fi
}

zsh_node_version() {
    if test -f 'package.json'; then
        local version=$(node -v)

	echo "\ue718 $version"
    fi
}

zsh_php_version() {
    if test -f 'composer.json'; then
        local version=$(php -r "echo PHP_VERSION;" | cut -f1 -d "-")

	echo "\ue73d $version"
    fi
}

POWERLEVEL9K_CUSTOM_REACT_VERSION='zsh_react_version'
POWERLEVEL9K_CUSTOM_NODE_VERSION='zsh_node_version'
POWERLEVEL9K_CUSTOM_PHP_VERSION='zsh_php_version'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir custom_php_version custom_node_version laravel_version custom_react_version vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX='# '

POWERLEVEL9K_DIR_HOME_BACKGROUND='orange1'
POWERLEVEL9K_DIR_HOME_FOREGROUND='silver'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='deepskyblue4'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='silver'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='deepskyblue4'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='silver'

POWERLEVEL9K_VCS_CLEAN_BACKGROUND='green'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='silver'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='red'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='silver'

POWERLEVEL9K_CUSTOM_REACT_VERSION_BACKGROUND='lightcyan3'
POWERLEVEL9K_CUSTOM_REACT_VERSION_FOREGROUND='black'
POWERLEVEL9K_CUSTOM_NODE_VERSION_BACKGROUND='turquoise4'
POWERLEVEL9K_CUSTOM_NODE_VERSION_FOREGROUND='silver'
POWERLEVEL9K_CUSTOM_PHP_VERSION_BACKGROUND='darkviolet'
POWERLEVEL9K_CUSTOM_PHP_VERSION_FOREGROUND='silver'

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

# Mounted code directory
export CDIR=/mnt/c/Users/Jovert\ Palonpon/Code

export PATH="$HOME/.npm-global/bin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
