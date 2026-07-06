{ profile, ... }: {
  programs.gh = {
    enable = true;
    settings = {
      version = 1;
      git_protocol = "https";
      editor = profile.defaultTools.editor;
      prompt = "enabled";
      prefer_editor_prompt = "disabled";
      pager = "cat";
      browser = profile.defaultTools.browser;

      color_labels = "disabled";
      accessible_colors = "disabled";
      accessible_prompter = "disabled";
      spinner = "enabled";
    };
  };
}
