let
  pkgs = import <nixpkgs> {};
in
pkgs.mkShell {
  name = "prototype-dev-env";

  buildInputs = with pkgs; [
    bun
    prisma
    prisma-engines  
    foundry         
  ];
  shellHook = ''
    export PRISMA_SCHEMA_ENGINE_BINARY="${pkgs.prisma-engines}/bin/schema-engine"
    export PRISMA_QUERY_ENGINE_LIBRARY="${pkgs.prisma-engines}/lib/libquery_engine.node"
    export PRISMA_QUERY_ENGINE_BINARY="${pkgs.prisma-engines}/bin/query-engine"
    export PRISMA_FMT_BINARY="${pkgs.prisma-engines}/bin/prisma-fmt"
  '';
}
