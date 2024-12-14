{pkgs, ...}: {
  imports = [
    ./zsh.nix
    ./direnv.nix
    ./development.nix
    ./browser.nix
    ./apps.nix
  ];
  home = rec { # recでAttribute Set内で他の値を参照できるようにする
    username="hanaokat";
    homeDirectory = "/home/${username}"; # 文字列に値を埋め込む
    stateVersion = "21.11";
  }; 
  programs.home-manager.enable = true; # home-manager自身でhome-managerを有効化
  services.ssh-agent.enable = true;

  nixpkgs.config.allowUnfree = true;
#  home.file = {
#    "wallpaper.png" = {
#      target = "Wallpaper/wallpaper.png";
#      source = ./wallpaper.png;
#    };
#  };
   home.packages = with pkgs; [
     bat
     bottom
     eza
     httpie
     pingu
     ripgrep
   ];
}
