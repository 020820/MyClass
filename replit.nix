{ pkgs }: {
  deps = [
    pkgs.vim
    pkgs.quit
    pkgs.utillinux.bin
    pkgs.clear
    pkgs.q
    pkgs.bashInteractive
    pkgs.nodePackages.bash-language-server
    pkgs.man
  ];
}