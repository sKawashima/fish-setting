function gpr
  gco master
  gpom
  gcob (date +%Y%m%d)$argv
  git commit --allow-empty -m "feat:create pull request"
  gp origin (date +%Y%m%d)$argv
  hub pull-request -m "WIP $argv"
  # hub browse
end
