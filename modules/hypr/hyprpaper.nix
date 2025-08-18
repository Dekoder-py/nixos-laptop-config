{ ... }: {
  services.hyprpaper.enable = true;

  services.hyprpaper.settings = {
    preload = ["/share/wallpapers/wallpaper.png"];
    wallpaper = [", /share/wallpapers/wallpaper.png"];
  };
}
