function walColors --description 'read current pywal generated colors'
  set -l walNum 0
  while read -l line
    set -g walColors$walNum $line
    set walNum (math $walNum + 1)
  end < /home/(whoami)/.cache/wal/colors
end
