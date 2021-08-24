#!/bin/sh
##### Clean ###########
alias dvprune='docker volume prune';
alias dprune='docker system prune';
alias dstop='docker stop $(docker ps -aq)';
alias drmc='docker rm $(docker ps -aq)';
alias drmci='docker rmi $(docker images -q)';
alias dclean='dstop && drmc && drmci && dvprune && dprune';
