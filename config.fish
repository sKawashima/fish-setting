status --is-interactive; and source (rbenv init -|psub)
# set -x PATH $HOME/.pyenv/bin $PATH

alias c='clear'
alias o.='open .'
alias a.='atom .'
alias a..='atom . & nrd'
alias qr='qrcode-terminal'

function update
  sudo gem update
  sudo npm i -g npm
  yarn global upgrade --latest
  brew update
  apm update -c false
  brew upgrade
end

function gcom
  git checkout master
  git pull
  git branch --merged | grep -v '*' | xargs -I % git branch -d %
  git fetch -p
  gbrd
  git fetch --all
end

alias gac="ga .; gcm $argv"
alias gpo="git push -u; git open"

function gacp
  gac $argv
  gp
end

function gacpo
  gac $argv
  gpo
end

function todocode -d "todo from source code"
  grep -e "TODO" -n $argv | grep -c ''
  grep -e "TODO" -n $argv
end
# alias gpro="gpr $argv; hub browse"

# merge済みリモートブランチの削除
alias gbrd="git branch -r --merged master | grep -v -e master -e develop | sed -e 's% *origin/%%' | xargs -I \% git push --delete origin --force \%"

# master以外のブランチの削除
alias gbdm="git branch | grep -v 'master' | grep -v '*' | xargs git branch -D"

# node
alias nrd='npm run dev'
alias nrg='npm run generate'

# yarn
alias yd='yarn dev'
alias ys='yarn start'
alias yb='yarn build'

# shell
alias la="ls -Gla"

# git related shortcut
alias undopush="git push -f origin HEAD^:master"
alias gd="git diff"
alias gdc="git diff --cached"
alias ga="git add"
alias gca="git commit -a -m"
alias gcm="git commit -m"
alias gbd="git branch -D"
alias gst="git status -sb --ignore-submodules"
alias gm="git merge --no-ff"
alias gpt="git push --tags"
alias gp="git push -u"
alias grs="git reset --soft"
alias grh="git reset --hard"
alias gb="git branch"
alias gcob="git checkout -b"
alias gco="git checkout"
alias gba="git branch -a"
alias gcp="git cherry-pick"
alias gl="git lg"
alias gpom="git pull origin master"
alias gsa="git status"
