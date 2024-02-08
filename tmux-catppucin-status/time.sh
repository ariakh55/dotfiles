show_time() {
  local index=$1
  local icon="$(get_tmux_option "@catppuccin_time_icon" "󰥔")"
  local color="$(get_tmux_option "@catppuccin_time_color" "$thm_blue")"
  local text="$(get_tmux_option "@catppuccin_time_text" "%H:%M")"

  local module=$( build_status_module "$index" "$icon" "$color" "$text" )

  echo "$module"
}

