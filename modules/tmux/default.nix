{ ... }: {
  programs.tmux = {
    enable = true;
    terminal = "tmux-256color";
    baseIndex = 1;
    prefix = "C-s";
    keyMode = "vi";
  };

  programs.tmux.extraConfig = ''
  set-option -ga terminal-overrides ",*256col*:Tc:RGB"
  set -g status-style 'bg=#1e1e2e'
  set -g status-position top
  
  bind r source-file ~/.config/tmux/tmux.conf \; display-message 'Config reloaded'
  '';
}
