# status --is-interactive; and source (rbenv init -|psub)
# set -x PATH $HOME/Library/Python/3.7/bin $PATH

# set -x PYENV_ROOT $HOME/.pyenv
# set -x PATH $PYENV_ROOT/bin:$PATH

set -x DENO_INSTALL $HOME/.deno
set -x PATH $DENO_INSTALL/bin:$PATH

set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin

# set -x PATH $HOME/flutter/bin:$PATH

set -x EDITOR micro
# eval (pyenv init - | source)

alias c='clear'
alias o.='open .'
alias a.='atom .'
alias a..='atom . & nrd'
alias qr='qrcode-terminal'
alias typora="open -a typora"

function update
  sudo gem update
  sudo npm i -g npm
  yarn global upgrade --latest
  brew update
  brew upgrade
end

function gcom
  git checkout master
  git pull
  git fetch --all
end

function gac
  echo $argv
  if test -z $argv
    ga .; gitmoji -c
  else
    ga .; gcm $argv
  end
end

alias gpo="git push -u; git open"

function gacp
  gac $argv
  gp
end

function gacpo
  gac $argv
  gpo
end

function gcep
  gce $argv
  gp
end

function gcepo
  gce $argv
  gpo
end

function todocode -d "todo from source code"
  grep -e "TODO" -n $argv | grep -c ''
  grep -e "TODO" -n $argv
end
# alias gpro="gpr $argv; hub browse"

function gcob
  git checkout -b $argv
  git push --set-upstream origin $argv
end

# merge済みリモートブランチの削除
alias gbrd="git branch -r --merged master | grep -v -e master -e develop | sed -e 's% *origin/%%' | xargs -I% git push --delete origin %"

# master以外のブランチの削除
alias gbdm="git branch | grep -v 'master' | grep -v '*' | xargs git branch -D"

# node
alias ni="npm i"
alias nid="npm i;npm run dev"
alias nrd='npm run dev'
alias nrg='npm run generate'
alias nd='npm run dev'
alias ns='npm start'
alias nb='npm run build'

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
alias gco="git checkout"
alias gba="git branch -a"
alias gcp="git cherry-pick"
alias gl="git lg"
alias gpom="git pull origin master"
alias gsa="git status"

alias c.="code ."
set -g fish_user_paths "/usr/local/opt/ncurses/bin" $fish_user_paths

alias d-c="docker-compose"

set -x NODENV_ROOT $HOME/.anyenv/envs/nodenv
set -x PATH $HOME/.anyenv/envs/nodenv/bin $PATH
set -gx PATH $NODENV_ROOT/shims $PATH

alias fuckXcode="time sudo rm -rf (xcode-select -print-path);xcode-select --install"

alias upyabai="brew services start skhd;brew services start yabai"
alias downyabai="brew services stop skhd;brew services stop yabai"
