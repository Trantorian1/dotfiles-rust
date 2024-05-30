{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }: flake-utils.lib.eachDefaultSystem (system:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      devShell = pkgs.mkShell {
        buildInputs = with pkgs; [
          # Rust
          rustc
          cargo
          rustfmt
          rust-analyzer
          clippy
          # neovim
          neovim
          lua
          # kickstart
          git
          gnumake
          unzip
          ripgrep
          # spectre
          gnused
          # git ui
          lazygit
          # javascript
          deno
        ];
      };
    });
}

