{ inputs, pkgs, config, ... }:
{
	programs.niri = {
	enable = true;
	package = pkgs.niri;
			settings = {
				spawn-at-startup = [ {command = ["noctalia"];}
				];
			};
	};
}
