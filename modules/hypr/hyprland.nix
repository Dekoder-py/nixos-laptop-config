{ ... }: {
  wayland.windowManager.hyprland.enable = true;
  
  wayland.windowManager.hyprland.settings = {
    "$mod" = "SUPER";
    bind = [
      "$mod, T, exec, kitty"
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
