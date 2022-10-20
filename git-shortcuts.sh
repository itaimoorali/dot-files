alias gcmer='git branch --merged | egrep -v "master|develop" | xargs git branch -d';
alias gcFlushBranch='git branch | grep -v "master\|develop" | xargs git branch -D';
alias g-bcp="git branch | grep '^\*' | cut -d' ' -f2 | tr -d '\n' | pbcopy"
alias checkout-develop="git checkout develop";
alias checkout-master="git checkout master";
alias pull-develop="git pull origin develop";
alias pull-master="git pull origin master";
alias gdateupdate="git commit --amend --no-edit --date \"$(date)\""

## Show branch name in the terminal
git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\W \e[1;33m ~ \$(git_branch)\e[0m \$ "

## Remove all the branches except master and develop
git_flush_branches() {
  read -p $'\e[91mThis will delete all Git branches except master and develop. Are you sure you want to proceed? (y/n): \e[0m' answer

  if [[ "$answer" =~ ^[Yy]$ ]]; then
    git branch | grep -v "master\|develop" | xargs git branch -D
    echo "Branches deleted successfully."
  else
    echo "Operation canceled."
  fi
}


