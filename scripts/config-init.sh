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

if [ "$1" == "--install" ] 
then
  git clone --bare https://github.com/ariakh55/dotfiles $REPO
  $ALIAS_CMD sparse-checkout init --cone
  echo "/*" > $REPO/info/sparse-checkout
  echo "!README.md" >> $REPO/info/sparse-checkout
  echo "!scripts/" >> $REPO/info/sparse-checkout
  $ALIAS_CMD read-tree -mu HEAD

  echo "Repository cloned and configured with sparse-checkout."
else
  git init --bare $REPO
  echo "Repository created."
fi
$ALIAS_CMD config --local status.showUntrackedFiles no
check_alias_exists "$HOME/.bashrc" "${ALIAS}"

if test $FISH_SHELL 
then
    FISH_CONFIG="$HOME/.config/fish/config.fish" 
    check_alias_exists "${FISH_CONFIG}" "${ALIAS}"
    /usr/bin/fish -c "source ${FISH_CONFIG}"
fi;


