status --is-interactive; and source (rbenv init -|psub)

alias c='clear'

function update
  sudo gem update
  yarn global upgrade --latest
  npm -g update
  brew update
  apm update
end

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
alias gp="git push"
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
