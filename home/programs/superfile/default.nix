{ settings, ... }:
{
  programs.superfile = {
    enable = true;

    firstUseCheck = true;

    settings = {
      file_editor = settings.tools.editor;
    };

    pinnedFolders = [
      { name = "Nix Config"; location = "/workspaces/nix-config"; }
      { name = "Projects"; location = "/workspaces"; }
    ];
  };
}

