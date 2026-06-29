{ pkgs,  config, inputs, ...}:
{


	home = {
		packages = with pkgs; [
			inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default 
			proton-vpn
			wineWow64Packages.waylandFull
			qbittorrent
			hydralauncher
			yazi
		];
	};
}
