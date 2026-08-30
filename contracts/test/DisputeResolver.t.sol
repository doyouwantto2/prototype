pragma solidity >=0.7.0 <0.9.0;

import {Test} from "forge-std/Test.sol";

contract DisputeResolver is Test {
  uint count = 1;

  function test() public view {
    assertEq(count, 1);
  }
}
