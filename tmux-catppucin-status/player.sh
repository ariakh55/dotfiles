# Requires https://github.com/robhurring/tmux-spotify.


show_player() {
  export MUSIC_APP="spotify"

  local index=$1
  local icon="$(get_tmux_option "@catppuccin_spotify_icon" "󰎆")"
  local color="$(get_tmux_option "@catppuccin_spotify_color")"
  local text="$(get_tmux_option "@catppuccin_spotify_text" "#{player_status} #{general_player}")"

  local module=$( build_status_module "$index" "$icon" "$color" "$text" )

  echo "$module"
}
