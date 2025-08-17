{ ... }: {
  programs.git = {
    enable = true;
    userName = "Dekoder-py";
    userEmail = "dekod3r.py@gmail.com";

    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}
