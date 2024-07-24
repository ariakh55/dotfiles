set -x SP_CONFIG $XDG_CONFIG_HOME
set -x SP_PROJX $HOME/Projects
set -x SP_ARCHIVE $HOME/archive
set -x SP_NOTES $HOME/notes

set -x SP_CLONES $SP_PROJX/clones
set -x SP_DOTS $SP_PROJX/dotfiles
set -x SP_DOCKER $SP_PROJX/docker-compose

set -x SP_EXTERNAL /media/$USER/

set -x KUBECONF $SP_PROJX/kubeconf.yaml

set -x CDPATH $SP_NOTES $SP_PROJX $SP_DOTS $SP_CLONES $SP_DOCKER $SP_CONFIG $SP_ARCHIVE $SP_EXTERNAL .
