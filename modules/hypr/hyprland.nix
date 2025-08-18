{ ... }: {
  wayland.windowManager.hyprland.enable = true;
  
  wayland.windowManager.hyprland.settings = {
    general = {
      gaps_out = 10;
      gaps_in = 4;
    };


    "$mod" = "SUPER";
    bind = [
      "$mod, T, exec, kitty"
      "$mod, B, exec, firefox"
      "$mod, Q, killactive"
      "$mod, M, exit"
    ] ++ (
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
