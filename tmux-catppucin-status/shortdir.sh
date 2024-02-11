truncate_path(){
  # Replace the home directory with ~
  local path=$(echo "$1" | sed "s|^$HOME|~|")
  # Shorten each part of the path to its first letter, except for the last part
  echo "$path" | sed 's:\(\.\?[^/]\)[^/]*/:\1/:g'
}

show_shortdir() {
  local index=$1
  local icon=$(get_tmux_option "@catppuccin_directory_icon" "")
  local color=$(get_tmux_option "@catppuccin_directory_color" "$thm_pink")
  local workingdir=$(get_tmux_option "@catppuccin_directory_text" "#{b:pane_current_path}")
  local text=$(truncate_path $workingdir)

  local module=$( build_status_module "$index" "$icon" "$color" "$text" )

  echo "$module"
}
