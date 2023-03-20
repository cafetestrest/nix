{
  description = "Example C package";

  inputs = {
    nixpkgs = {
      url = github:nixos/nixpkgs?ref=nixos-22.11;
    };
  };

  outputs = {
    self,
    nixpkgs
  }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs { inherit system; };
  in {
    packages.${system} = with pkgs; {
      myPackage = cowsay;
      default = htop;
    };
  };
}
