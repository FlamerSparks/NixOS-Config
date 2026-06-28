{ pkgs,  config, inputs, ...}:
{
	imports = [
	./discord.nix
	./spotify.nix
	./zen.nix
	];

}
