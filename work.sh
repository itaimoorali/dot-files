#!/bin/bash
# Git ShortCuts
alias up-setgitcfg='git config user.name "Taimoor Ali" && git config user.email "<Your Work Email>"';
alias up-gtmatch='cd ~/work/match-team';

source ~/dot-files/up_setup_node.sh;

match-a-venv() {
  CURRENT_DIR=$(pwd);

  cd ~/work/match-team;
  a-venv;
  echo $CURRENT_DIR;
  cd "$CURRENT_DIR";
}

# Get the certificate (.crt) from BookMark Name (Global Root CA Cert) 
# and put in /etc/ssl/certs directory
##
export NODE_EXTRA_CA_CERTS='/etc/ssl/certs/global-root-ca.crt'