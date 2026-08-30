mkdir storage/deployments

cd contracts
  git rm -f --cached -r lib/forge-std 2>/dev/null || true
  rm -rf lib/forge-std
  rm -f .gitmodules
  git config --remove-section submodule.lib/forge-std 2>/dev/null || true

  forge install foundry-rs/forge-std
  forge build 

  forge script script/DeployBondManager.s.sol --rpc-url http://localhost:8545 --broadcast
  forge script script/DeployLegitimacyClaim.s.sol --rpc-url http://localhost:8545 --broadcast
  forge script script/DeployDisputeResolver.s.sol --rpc-url http://localhost:8545 --broadcast
cd ..

cd core
  npm install
  npx prisma migrate dev --name init
  npx prisma generate
  npm run build
cd ..

