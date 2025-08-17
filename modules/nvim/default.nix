{ ... }: {
  programs.neovim = {
    enable = true;
  
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;

    defaultEditor = true;
    
    extraLuaConfig = ''
	vim.opt.tabstop = 2
	vim.opt.shiftwidth = 2
	vim.opt.expandtab = true
    '';

  };
}
