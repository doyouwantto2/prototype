mkdir storage/deployments

cd contracts
  forge build 
  forge script script/DeployLegitimacyManager.s.sol --rpc-url http://localhost:8545 --broadcast
  forge script script/DeployBondManager.s.sol --rpc-url http://localhost:8545 --broadcast
  forge script script/DeployDisputeResolver.s.sol --rpc-url http://localhost:8545 --broadcast
cd ..

cd frontend
  bun install
  bun run build
cd ..

