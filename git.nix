{pkgs, ...}: {
  programs.git = {
    enable = true;
    userName = "flowerhill";
    userEmail = "tomoki19880910@gmail.com";
  };

  programs.ssh = {
    enable = true;
    matchBlocks = {
      "github.com" = {
        identityFile = "~/.ssh/id_ed25519";
	extraConfig= ''
	  AddKeysToAgent = "yes";
	  # ssh-askpassを無効化
	  SSH_ASKPASS=
	'';
      };
    };
  };

  programs.gh = {
    enable = true;
    extensions = with pkgs; [gh-markdown-preview];
    settings = {
      editor = "vim";
    };
  };
}
