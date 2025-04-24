function upgrade_nix_profiles
  set -e NIXPKGS_ALLOW_UNFREE 1
  # nix flake --file $GLOBAL_NIX/flake.nix
  nix profile upgrade --all --impure
end
