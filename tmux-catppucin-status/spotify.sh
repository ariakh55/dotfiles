# Requires https://github.com/robhurring/tmux-spotify.

show_spotify() {
  export MUSIC_APP="spotify"

  local index=$1
  local icon="$(get_tmux_option "@catppuccin_spotify_icon" "")"
  local color="$(get_tmux_option "@catppuccin_spotify_color" "$thm_green")"
  local text="$(get_tmux_option "@catppuccin_spotify_text" "#{music_status} #{music_custom}")"

  local module=$( build_status_module "$index" "$icon" "$color" "$text" )

  echo "$module"
}
