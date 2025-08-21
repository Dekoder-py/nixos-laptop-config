{ pkgs, ... }: {
  programs.neovim = {
    enable = true;
  
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;

    plugins = with pkgs.vimPlugins; [
      telescope-nvim
      nvim-treesitter
      catppuccin-nvim
      lazygit-nvim
      oil-nvim
      nvim-web-devicons
    ];

    defaultEditor = true;
  };

    programs.neovim.extraLuaConfig = ''
      ${builtins.readFile ./options.lua}
      ${builtins.readFile ./setup.lua}
    '';

}
