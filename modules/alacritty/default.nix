{ ... }: {
  programs.alacritty.enable = true;
  programs.alacritty.settings = {
  general = {
    import = ["~/.config/alacritty/catppuccin-mocha.toml"];
  };

  env = {
    TERM = "xterm-256color";
  };
  
  font = {
    size = 26;
  };
  };
}
