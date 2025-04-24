## where the magic begins
# This requires nix with flake enabled
function load_global_nix
  set -e NIXPKGS_ALLOW_UNFREE 1
  # nix flake --file $GLOBAL_NIX/flake.nix
  nix profile install $GLOBAL_NIX/#default --impure
end
