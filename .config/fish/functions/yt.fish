function yt --wraps mpv --description 'see yt via mpv'
  mpv  --ytdl-format=best $argv
end
