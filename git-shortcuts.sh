alias gcmer='git branch -d `git branch --merged`';
alias g-bcp="git branch | grep '^\*' | cut -d' ' -f2 | tr -d '\n' | pbcopy"


## Show branch name in the terminal
git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\W \e[1;33m ~ \$(git_branch)\e[0m \$ "
