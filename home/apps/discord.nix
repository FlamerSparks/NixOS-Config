{ inputs, pkgs, config, ... }:
{
#	home.packages = [
#	(pkgs.discord.override {
#		withVencord = true;
#	})
#	];

	programs.discord.enable = true;
}

