{
  description = "A basic flake for using R";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

  outputs = {self, nixpkgs } :
    let
    system = "x86_64-linux";
    # pkgs = nixpkgs.legacyPackages.x86_64-linux;
    pkgs = import nixpkgs {
      inherit system;
      # config.allowUnfree = true;
    };
    
  in {
    devShell.${system} = pkgs.mkShell {

      nativeBuildInputs = [ pkgs.bashInteractive ];
      buildInputs = with pkgs; [ 
        R rPackages.pagedown
        rPackages.languageserver
        # add more packages (https://search.nixos.org)
      ];

      # Example for rstudio
      # pkgs.rstudioWrapper.override {
      #   packages = with pkgs.rPackages; [ dplyr ggplot2 reshape2 ];
      # }
    };
  };
}
