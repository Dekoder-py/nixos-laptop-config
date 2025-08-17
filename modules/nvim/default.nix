{ ... }: {
  programs.neovim = {
    enable = true;
  
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;

    defaultEditor = true;
    
    extraLuaConfig = ''
      vim.opt.tabstop = 2
      vim.opt.softtabstop = 2
      vim.opt.shiftwidth = 2
      vim.opt.expandtab = true

      vim.opt.scrolloff = 10

      vim.opt.number = true
      vim.opt.relativenumber = true
      vim.opt.signcolumn = "yes"
    '';

  };
}
