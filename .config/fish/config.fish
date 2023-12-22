if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g fish_greeting

set -Ux MOZ_ENABLE_WAYLAND 1

function fish_prompt
  echo -n (set_color green) (prompt_pwd)(set_color normal) '> '
end

fish_add_path -a /home/giuji/.local/bin/
