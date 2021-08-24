#!/bin/sh

### Listing
alias ll='ls -l';

## reload
alias re-source="source ~/.bash_profile"

##### helper ########
alias gtwk='cd ~/work';
alias gtprwk='gtwk && cd personal/';
alias gtjs='gtprwk && cd js-stallions/';
alias gtecash='gtjs && cd e-cash/';

##### NODE VIRTUAL ENV ########
alias a-venv='. .virtualenv/bin/activate'
alias d-venv='deactivate_node'
