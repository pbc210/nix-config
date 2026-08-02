{
  programs.nixvim.colorschemes.nightfox = {
    enable = true;
    flavor = "carbonfox";
    settings = {

      options = {
        transparent = false;
        terminal_colors = true;
        dim_inactive = false;
        styles = {
          comments = "italic";
          keywords = "bold";
        };
      };
    };
  };
}
