pragma solidity >=0.7.0 <0.9.0;

import "forge-std/Script.sol";
import "../src/DisputeResolver.sol";

contract DeployDisputeResolver is Script {

  function run() external {
      string memory accountsJson = vm.readFile("../storage/accounts.json");
      string memory pkStr = vm.parseJsonString(accountsJson, "[0]");
      uint256 pk = vm.parseUint(pkStr);

      vm.startBroadcast(pk);

      DisputeResolver disputeResolver = new DisputeResolver();
      address addr = address(disputeResolver);

      string memory json = string.concat(
          '{',
          '"contractName":"DisputeResolver",',
          '"address":"', vm.toString(addr), '",',
          '"deployer":"', vm.toString(msg.sender), '",',
          '"chainId":"', vm.toString(block.chainid), '",',
          '"blockNumber":"', vm.toString(block.number), '"',
          '}'
      );

      vm.writeFile("../storage/deployments/DisputeResolver.json", json);

      vm.stopBroadcast();
  }

}
