{ pkgs,  config, ...}:
{
 imports = [
	./config.nix
	./binds.nix
];
}
