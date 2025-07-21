show_bluetooth() {
  local index=$1
  local icon="$(get_tmux_option "@gruvbox_bluetooth_icon" "#{bluetooth_icon}")"
  local color="$(get_tmux_option "@gruvbox_bluetooth_color" "$thm_blue")"
  local text="$(get_tmux_option "@gruvbox_bluetooth_text" "#{bluetooth_connected_devices_count}")"

  local module=$( build_status_module "$index" "$icon" "$color" "$text" )

  echo "$module"
}

