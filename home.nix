{ config, pkgs, ... }: 

{
  home.username = "kyle";
  home.homeDirectory = "/home/kyle";

  home.packages = with pkgs; [
    fastfetch
  ];

  imports = [
    ./modules/bash/default.nix
    ./modules/nvim/default.nix
    ./modules/git/default.nix
    ./modules/gh/default.nix
  ];

  home.stateVersion = "25.05";

}
