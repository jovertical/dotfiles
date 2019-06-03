# Laravel
alias art='php artisan'
alias serve='php artisan serve'
alias tinker='php artisan tinker'
alias pam='php artisan migrate'
alias pam:f='php artisan migrate:fresh'
alias pam:fs='php artisan migrate:fresh --seed'

# Docker
alias dcb='docker-compose build'
alias dcdown='docker-compose down'
alias dce='docker-compose exec'
alias dcl='docker-compose logs'
alias dclf='docker-compose logs -f'
alias dc='docker-compose'
alias dcps='docker-compose ps'
alias dcr='docker-compose run'
alias dcrestart='docker-compose restart'
alias dcrm='docker-compose rm'
alias dcstop='docker-compose stop'
alias dcup='docker-compose up'
alias dm='docker-machine'
alias dmls='docker-machine ls'
alias dprune='docker kill $(docker ps -a -q) && docker system prune -f'
alias drit='docker exec -it'
alias drma='docker rm $(docker ps -a -q)'
alias drmai='docker rmi $(docker images -q)'
alias dwipe='docker kill $(docker ps -a -q) && docker system prune -af'

# Composer
alias cu='composer update'
alias ci='composer install'
alias cda='composer dump-autoload'

# Git
alias gst='git status'
alias ga='git add'
alias gcm='git commit'
alias gck='git checkout'
alias gf='git fetch'
alias gpl='git pull'
alias gfp='git fetch && git pull'
alias gps='git push'
alias nah='git checkout . && git reset --hard'
alias fix='git add . && git commit -m "fix" && git push'
alias wip='git add . && git commit -m "wip" && git push'

# Generic
alias vsc="code-insiders ."
ccat() {
  cat "$1" | clip.exe
}
