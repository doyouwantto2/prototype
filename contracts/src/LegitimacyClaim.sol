pragma solidity >=0.7.0 <0.9.0;

import {Test} from "forge-std/Test.sol";

contract LegitimacyClaim {
  uint public count = 0;

  function inc() public {
    count++; 
  }

  function get() public view returns (uint) {
    return count;
  }
}
