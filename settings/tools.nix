rec {
  shell = "zsh";
  editor = "nvim";
  browser = "vivaldi";
  pager = "bat --plain --pager='less -FR'";

  alias = {
    cd = "z";
    cat = "bat";
    less = pager;
    nano = editor;
    grep = "rg";
    find = "fd";
    tree = "eza -T";
  };
}
