{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    rust-overlay.url = "github:oxalica/rust-overlay";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    rust-overlay,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        overlays = [(import rust-overlay)];
        pkgs = import nixpkgs {
          inherit system overlays;
        };
      in {
        devShell = pkgs.mkShell {
          buildInputs = with pkgs; [
            # Rust
            (rust-bin.stable."1.88.0".default.override {
              extensions = ["rust-src"];
              targets = ["wasm32-unknown-unknown"];
            })
            rust-analyzer
            mdbook
            mdbook-mermaid
            mold
            # python
            python312
            poetry
            mypy
            # go
            go
            # TODO: move this to individual per-project flakes
            protobuf
            clang
            llvmPackages.libclang
            pkg-config
            openssl
            stdenv
            # neovim
            neovim
            neovide
            lua
            xclip
            unzip
            # kickstart
            git
            gnumake
            unzip
            ripgrep
            # spectre
            gnused
            # javascript
            nodejs
            deno
            # formatters
            nodePackages.fixjson
            alejandra
            ruff
            isort
            taplo
          ];

          RUST_BACKTRACE = 1;

          shellHook = ''
            export LIBCLANG_PATH=${pkgs.llvmPackages.libclang.lib}/lib
            export LD_LIBRARY_PATH="${pkgs.stdenv.cc.cc.lib}/lib"
            export XDG_CONFIG_HOME=$HOME/Documents/code/.dotfiles
            export SHELL=$(which zsh)
          '';
        };
      }
    );
}
