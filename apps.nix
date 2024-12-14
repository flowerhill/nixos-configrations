{pkgs, ...}: {
  programs.ncspot.enable = true;

  programs.obs-studio.enable = true;

  home.packages = with pkgs; [
    discord
    discord-ptb
    slack
    warp-terminal
    vscode
  ];
}
