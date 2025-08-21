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
    ];

    defaultEditor = true;
  };

    programs.neovim.extraLuaConfig = ''
      vim.cmd.colorscheme "catppuccin"
      ${builtins.readFile ./options.lua}
    '';

}
