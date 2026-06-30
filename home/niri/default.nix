{ pkgs,  config, ...}:
{
 imports = [
	./config.nix
	./binds.nix
	./monitor-setup.nix
];
}
