{ inputs, pkgs, config, ... }:
let
 corner-radius = 20.0;
in
{
	programs.niri = {
	enable = true;
	package = pkgs.niri;
			settings = {
				spawn-at-startup = [ {command = ["noctalia"];}];
				window-rules=[{
					geometry-corner-radius = {
						top-left = corner-radius;	
						top-right = corner-radius;	
						bottom-left = corner-radius;	
						bottom-right = corner-radius;	
					};			
					clip-to-geometry = true;
				}];
				
			};
	};
}
