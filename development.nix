{pkgs, ...}: {
  home.packages = with pkgs; [
    gcc
    go
    nodejs-slim
    nodePackages.pnpm
    nodePackages.wrangler
    deno
    bun
    python312
    zig
    rust-bin.stable.latest.default
    stack
    cabal-install
    ghc
  ];
}
