with import <nixpkgs> {};

pkgs.mkShell {
  buildInputs = [
    pkgs.vim
    pkgs.htop
    # Other packages you want to include
    pkgs.fd 
    pkgs.zoxide 
    pkgs.vim 
    pkgs.oh-my-zsh 
    pkgs.zsh 
    pkgs.bat 
    pkgs.duf 
    pkgs.procs 
    pkgs.fzf 
    pkgs.gum 
    pkgs.jq 
    pkgs.tldr 
    pkgs.tmux 
    pkgs.gettext 
    pkgs.unzip 
    pkgs.neovim 
    pkgs.gcc
  ];
}
