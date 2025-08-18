{ ... }: {
  wayland.windowManager.hyprland.enable = true;
  
  wayland.windowManager.hyprland.settings = {
    "$mod" = "SUPER";
    bind = [
      "$mod, T, exec, kitty"
      "$mod, Q, killactive"
      "$mod, M, exit"
    ];
  };
}
