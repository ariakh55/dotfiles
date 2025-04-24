show_session_git() {
  local index=$1
  local icon=$(get_tmux_option "@gruvbox_session_icon" "")
  local color=$(get_tmux_option "@gruvbox_session_color" "#{?client_prefix,$thm_red,$thm_green}")
  local text=$(get_tmux_option "@gruvbox_session_text" "#S")

  local git='#(gitmux -cfg $HOME/.tmux/.gitmux.conf "#{pane_current_path}" || echo "")'
  local session_name="$text$git"

  local module=$(build_status_module "$index" "$icon" "$color" "$session_name")

  echo "$module"
}
