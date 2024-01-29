{
  outputs = { self, nixpkgs }: {
    nixosConfigurations.hello = nixpkgs.lib.nixosSystem {
      system = "aarch64-linux";
      modules = [ 
        ./configuration.nix
        ./hello.nix
      ];
    };
  };
}