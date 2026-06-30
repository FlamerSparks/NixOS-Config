{ inputs, pkgs, config, ... }:
{
	programs.niri.settings = {
		outputs = {
			#Main Montior - MSI 2560x1440p 240hz 
			DP-3 = {
				focus-at-startup = true;
				mode = {
					refresh = 240.0;
					width = 2560;
					height = 1440;
				};
				position = {
					x = 1080;
					y = 0;
				};
			};
			
			#Side Monitor - DELL 1920x1080p 75hz
			DP-1 = {
				focus-at-startup = false;
				transform.rotation = 90;
				mode = {
					refresh = 74.973;
					width = 1920;
					height = 1080;
				};
				position = {
					x = 0;
					y = 0;
				};
			};

			#Top Montiro - SAMSUNG 1920x1080p 144hz
			DP-2 = {
				focus-at-startup = false;
				transform.rotation = 180;
				mode = {
					refresh = 143.980;
					width = 1920;
					height = 1080;
				};
				position = {
					x = 1400;
					y = -1080;
				};
			};
		};
	};
}
