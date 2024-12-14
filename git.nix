{pkgs, ...}: {
  programs.git = {
    enable = true;
    userName = "flowerhill";
    userEmail = "tomoki19880910@gmail.com";
  };

  programs.gh = {
    enable = true;
    extensions = with pkgs; [gh-markdown-preview];
    settings = {
      editor = "vim";
    };
  };
}
