{ ... }: { 
  programs.bash = {
    enable = true;
    enableCompletion = true;

    shellAliases = {
      ff = "fastfetch";
      lg = "lazygit";
    };
  };
}
