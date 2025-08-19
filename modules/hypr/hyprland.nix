{ ... }: {
  wayland.windowManager.hyprland.enable = true;
  
  wayland.windowManager.hyprland.settings = {
    general = {
      gaps_out = 10;
      gaps_in = 4;
    };


    "$mod" = "SUPER";
    bind = [
      # main binds
      "$mod, T, exec, alacritty"
      "$mod, B, exec, firefox"
      "$mod, Q, killactive"
      "$mod, M, exit"
      
      # move focus with mod + arrows 
      "$mod, left, movefocus, l"
      "$mod, right, movefocus, r"
      "$mod, up, movefocus, u"
      "$mod, down, movefocus, d"

    ] ++ (
      # workspace binds
      builtins.concatLists (builtins.genList (i:
        let ws = i + 1;
        in [
          "$mod, code:1${toString i}, workspace, ${toString ws}"
          "$mod SHIFT, code:1${toString i}, movetoworkspace, ${toString ws}"
        ]
      )
    9)
   ); 
  };
}
