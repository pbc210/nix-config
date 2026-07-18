{
  programs.nixvim.plugins.lsp.servers.nixd = {
    enable = true;
    settings = {
      # Định dạng code khi lưu file bằng nixpkgs-fmt hoặc alejandra
      formatting.command = [ "nixpkgs-fmt" ];
      # Cấu hình để nixd hiểu các options của Nixvim/NixOS (tùy chọn)
      options = {
        # Gợi ý các option từ nixpkgs
        nixpkgs.expr = "import <nixpkgs> { }";
      };
    };
  };
}
