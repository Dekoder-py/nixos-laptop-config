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
    normal = {
      family = "JetBrainsMono Nerd Font Mono";
      style = "Regular";
    };
    size = 20;
  };
  };
}
