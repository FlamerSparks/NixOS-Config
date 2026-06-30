{ pkgs,  config, inputs, ...}:
{
	imports = [
		./niri
		./apps
		./noctalia
		./text-editors
		inputs.niri.homeModules.niri
	];


	home = {
		username = "william";
		homeDirectory= "/home/william";
		stateVersion = "26.05";
	};
	
	programs.home-manager.enable = true;
	programs.kitty.enable = true;
	programs.btop.enable = true;
	programs.git = {
		enable = true;
		userName = "FlamerSparks";
		userEmail = "flamer.sparks@gmail.com";
	};
}
