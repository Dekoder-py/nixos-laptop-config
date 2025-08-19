{ ... }: { 
  programs.bash = {
    enable = true;
    enableCompletion = true;

    shellAliases = {
      ff = "fastfetch";
      lg = "lazygit";
      ls = "eza -1 --icons=always";
      l = "eza -lh --icons=always --group-directories-first";
      ll = "eza -lha --icons=always --sort=name --group-directories-first";
      ld = "eza -lhD --icons=always";
      lt = "eza --icons=always --tree";
      nix-sync = "sudo nixos-rebuild switch";
    };
  };
}
