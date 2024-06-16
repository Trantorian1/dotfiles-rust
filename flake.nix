{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    rust-overlay.url = "github:oxalica/rust-overlay";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, rust-overlay, flake-utils }: 
    flake-utils.lib.eachDefaultSystem (system:
      let
        overlays = [ (import rust-overlay) ];
        pkgs = import nixpkgs {
          inherit system overlays;
        };
      in
      {
      devShell = pkgs.mkShell {
        buildInputs = with pkgs; [
          # Rust
          (rust-bin.stable.latest.default.override {
            extensions = [ "rust-src" ];
            targets = [ "wasm32-unknown-unknown" ];
          })
          rust-analyzer
          rustup
          # TODO: move this to individual per-project flakes
          protobuf
          clang
          llvmPackages.libclang
          # neovim
          neovim
          neovide
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

        RUST_BACKTRACE = 1;

        shellHook = ''
          export LIBCLANG_PATH=${pkgs.llvmPackages.libclang.lib}/lib
          export XDG_CONFIG_HOME=$HOME/Documents/code/rust/.dotfiles;
        '';
      };
    }
  );
}

