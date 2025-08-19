{ config, pkgs, ... }: 

{
  home.username = "kyle";
  home.homeDirectory = "/home/kyle";

  imports = [
    ./modules/alacritty/default.nix
    ./modules/bash/default.nix
    ./modules/nvim/default.nix
    ./modules/git/default.nix
    ./modules/gh/default.nix
    ./modules/hypr/hyprland.nix
    ./modules/hypr/hyprpaper.nix
  ];

  home.stateVersion = "25.05";

}
