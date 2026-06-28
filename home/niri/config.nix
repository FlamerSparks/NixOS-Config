{ inputs, pkgs, config, ... }:
{
	programs.niri = {
	enable = true;
	package = pkgs.niri;
			settings = {
				spawn-at-startup = [ {command = ["noctalia"];}
				];
				binds = {
				  "Mod+Return".action.spawn = "kitty";
				  "Mod+Print".action.screenshot = {show-pointer =true;};
				};
			};
	};
}
