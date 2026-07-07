rec {
  name = "PBCDev";
  userName = "pbcdev";

  dirHome = "/home/${userName}";
  dirConfig = "${dirHome}/nix-config";

  email = import ./email.nix;
  defaultTools = import ./tools.nix;

  hashedPassword = "$6$D0ewzu8Rhwdgv0k8$6SPkDIIRUKlRmC8.Sk89TUCdJYs35bG1aUN641wZWcsP/ul25wICjEq8sz57cIs1qGmoV4OdRcKlrmDiSPdqG.";
}
