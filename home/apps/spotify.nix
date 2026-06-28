{ pkgs,  config, inputs, ...}:
{
	imports = [
		inputs.spicetify-nix.homeManagerModules.default
	];



	programs.spicetify =
		let
		spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.stdenv.hostPlatform.system};
	in
	{
		enable = true;

		enabledExtensions = with spicePkgs.extensions; [
			adblock
		];


		# Enable custom apps and snippets when needed
#enabledCustomApps = with spicePkgs.apps; [
#];
#enabledSnippets = with spicePkgs.snippets; [
#];

		theme = spicePkgs.themes.text;
	};
	
	

}
