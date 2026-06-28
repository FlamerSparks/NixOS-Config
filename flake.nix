{
	description = "First NixOS Flake";

	inputs = {
			nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
			
			niri = {
				url = "github:sodiboo/niri-flake";
				inputs.nixpkgs.follows = "nixpkgs";
			};
			noctalia = {
				url = "github:noctalia-dev/noctalia";
				inputs.nixpkgs.follows = "nixpkgs";
			};
			home-manager = {
				url = "github:nix-community/home-manager/release-26.05";
				inputs.nixpkgs.follows = "nixpkgs";
			};
	};

	outputs = {self, nixpkgs, home-manager, ...}@inputs: {
		nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
			specialArgs = { inherit inputs; };
			modules = [
				./nixos/configuration.nix
				home-manager.nixosModules.home-manager
				{
					home-manager.useGlobalPkgs = true;
					home-manager.useUserPackages = true;
					home-manager.users.william = import ./home;
					home-manager.extraSpecialArgs = {inherit inputs;};
				}
			];

					};
		};
}
