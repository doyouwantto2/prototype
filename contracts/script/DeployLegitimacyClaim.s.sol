pragma solidity >=0.7.0 <0.9.0;

import "forge-std/Script.sol";
import "../src/LegitimacyClaim.sol";

contract DeployLegitimacyClaim is Script {

  function run() external {
      string memory accountsJson = vm.readFile("../storage/accounts.json");
      string memory pkStr = vm.parseJsonString(accountsJson, "[0]");
      uint256 pk = vm.parseUint(pkStr);

      vm.startBroadcast(pk);

      LegitimacyClaim legitimacyClaim = new LegitimacyClaim();
      address addr = address(legitimacyClaim);

      string memory json = string.concat(
          '{',
          '"contractName":"LegitimacyClaim",',
          '"address":"', vm.toString(addr), '",',
          '"deployer":"', vm.toString(msg.sender), '",',
          '"chainId":"', vm.toString(block.chainid), '",',
          '"blockNumber":"', vm.toString(block.number), '"',
          '}'
      );

      vm.writeFile("../storage/deployments/LegitimacyClaim.json", json);

      vm.stopBroadcast();
  }

}
