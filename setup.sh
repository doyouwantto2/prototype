mkdir storage/deployments

cd contracts
  forge install foundry-rs/forge-std
  forge build 

  forge script script/DeployBondManager.s.sol --rpc-url http://localhost:8545 --broadcast
  forge script script/DeployLegitimacyClaim.s.sol --rpc-url http://localhost:8545 --broadcast
  forge script script/DeployDisputeResolver.s.sol --rpc-url http://localhost:8545 --broadcast
cd ..

cd core
  bun install
  bun run build
cd ..

