{ ... }: {
  programs.neovim = {
    enable = true;
  
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;

    defaultEditor = true;
  };

    programs.neovim.extraLuaConfig = ''

      ${builtins.readFile ./options.lua}
    '';

}
