# Laravel
artisan() {
  if [ -f bin/artisan ]; then
    php bin/artisan '$@'
  else
    php artisan '$@'
  fi
}

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

# Version Control
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias pull='git pull'
alias push='git push'
alias nah='git checkout . && git reset --hard'
alias wip='git add . && git commit -m 'wip' && git push origin master'

# Package Management
alias cu='composer update'
alias ci='composer install'
alias cda='composer dump-autoload'

# Generic
alias xc:c='xclip -se c'
alias pcat='pygmentize -f terminal256 -O style=native -g'
alias emulator='${ANDROID_HOME}/tools/emulator'
alias ssh:tokyo1='ssh -i ~/Documents/ipp_system/oldippv2.pem ubuntu@54.92.70.146'
alias ssh:tokyo2='ssh -i ~/Documents/ipp_system/ippv2.pem ubuntu@52.197.151.207'
alias clr='clear'
