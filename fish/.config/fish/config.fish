if status is-interactive
# Commands to run in interactive sessions can go here
  alias bluetooth='bluetui'
  alias audio='wiremix'
  alias wifi='impala'
  alias music='kew'
  alias explorer='yazi'
end

if status is-login
  # .bash_profile code here

  if test -z "$WAYLAND_DISPLAY"; and test "$XDG_VTNR" = "1"
    exec start-hyprland
  end
end
