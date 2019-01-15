# Laravel
artisan() {
    if [ -f bin/artisan ]; then
        php bin/artisan "$@"
    else
        php artisan "$@"
    fi
}

alias art="php artisan"
alias serve="php artisan serve"
alias tinker="php artisan tinker"
alias pam="php artisan migrate"
alias pam:f="php artisan migrate:fresh"
alias pam:fs="php artisan migrate:fresh --seed"

# Version Control
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias pull="git pull"
alias push="git push"
alias wip="git add . && git commit -m 'wip' && git push origin master"

# Package Management
alias cu="composer update"
alias ci="composer install"
alias cda="composer dump-autoload"

# Generic
alias xc:c="xclip -se c"
alias emulator="${ANDROID_HOME}/tools/emulator"
alias ssh:tokyo1="ssh -i ~/Documents/ipp_system/oldippv2.pem ubuntu@54.92.70.146"
alias ssh:tokyo2="ssh -i ~/Documents/ipp_system/ippv2.pem ubuntu@52.197.151.207"
alias clr="clear"
