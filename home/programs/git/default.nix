{ profile, ... }: {
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = profile.name;
        email = profile.email.main;
      };
      init = {
        defaultBranch = "main";
      };

      "credential \"https://github.com\"" = {
        helper = [
          ""
          "!/usr/bin/gh auth git-credential"
        ];
      };

      "credential \"https://gist.github.com\"" = {
        helper = [
          ""
          "!/usr/bin/gh auth git-credential"
        ];
      };
    };
  };
}
