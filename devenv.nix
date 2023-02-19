{ inputs, pkgs, ... }:
with pkgs;
{
  env.GREET = "devenv";
  packages = [ (python310.withPackages (p: with p; [ python3 pytorch-bin]))  ];
  scripts.hello.exec = "echo hello from $GREET";

  enterShell = ''
    hello
    git --version
  '';
}
