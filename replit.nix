{ pkgs }: {
  deps = [
    pkgs.pwdsafety
    pkgs.oed
    pkgs.age
    pkgs.q-text-as-data
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