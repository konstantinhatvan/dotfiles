{
  description = "Konstantin's home-manager configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }: {
    homeConfigurations."konstantin-hatvan" = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
      modules = [
        ./home.nix
	    ./env.nix
	    ./programs/git.nix
	    ./programs/zsh.nix
	    ./programs/gh.nix
	    ./programs/ssh.nix
      ];
    };
  };
}
