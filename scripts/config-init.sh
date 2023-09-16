#!/bin/bash

REPO=$HOME/.dotconfig
ALIAS_CMD="/usr/bin/git --git-dir=$REPO/ --work-tree=$HOME"
ALIAS="alias dotconfig='${ALIAS_CMD}'" 
FISH_SHELL=$(which fish)

check_alias_exists() {
  local file="$1"
  local text_to_append="$2"

  if ! grep -Fxq "$text_to_append" "$file"; then
    echo "$text_to_append" >> "$file"
  fi
}


git init --bare $REPO
$ALIAS_CMD config --local status.showUntrackedFiles no
check_alias_exists "$HOME/.bashrc" "${ALIAS}"

if test $FISH_SHELL 
then
    FISH_CONFIG="$HOME/.config/fish/config.fish" 
    check_alias_exists "${FISH_CONFIG}" "${ALIAS}"
    /usr/bin/fish -c "source ${FISH_CONFIG}"
fi;


