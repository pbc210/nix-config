{
  programs.nixvim.plugins.mini = {
    enable = true;
    modules = {
      pairs = {};
      surround = {};
      ai = {};
      comment = {};
      indentscope = {};
      editorconfig = {};
      splitjoin = {};
    };
  };
}
