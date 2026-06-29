{ pkgs,  config, inputs, ...}:
{
	imports = [
	./discord.nix
	./spotify.nix
	./packages.nix
	];

}
