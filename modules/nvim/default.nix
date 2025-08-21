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
    ];

    defaultEditor = true;
  };

    programs.neovim.extraLuaConfig = ''
      ${builtins.readFile ./options.lua}


      vim.cmd.colorscheme "catppuccin"
    '';

}
