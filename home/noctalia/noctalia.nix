{ pkgs,  config, inputs, ...}:
{
	imports = [
		inputs.noctalia.homeModules.default
	];

	programs.noctalia = {
		enable = true;
		settings = {
			bar = {
				position = "top"
				enabled = true;
				radius_top_left = 0;
				radius_top_right = 0;
				radius_bottom_right = -20;
				radius_bottom_left = -20;
				
			};
			};
	};
}
