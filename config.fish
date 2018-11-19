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
end

function gcom
  git fetch --all
  git checkout master
  git pull
  git branch --merged master | grep -vE '^\*|master$|develop$' | xargs -I \% git branch -d \%
  git fetch -p
end

alias gac="ga .; gcm $argv"
alias gpo="git push -u; hub browse"

# alias gpro="gpr $argv; hub browse"

# merge済みリモートブランチの削除
alias gbrd="git branch -r --merged master | grep -v -e master -e develop | sed -e 's% *origin/%%' | xargs -I \% git push --delete origin --force \%"

# node
alias nrd='npm run dev'
alias nrg='npm run generate'

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
