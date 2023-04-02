// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.18;

contract Project1 {
  address public owner;
  
  modifier ownerOnly() {
    // require() Statement.
    require(msg.sender == owner, "Only 'owner' can call this.");
    _;
  }

  function deposit(uint amount) public payable ownerOnly {
    if(msg.sender != owner) {
      revert("You do not have permission to deposit.");
    }

    if (amount > msg.value / 2 ether) { 
      // revert() Statement.
      revert("Not enough Ether provided.");
    }
  }

  function greaterThan(uint num1, uint num2) public pure {
    assert(num1 > num2);
  }

  function lessThan(uint num1, uint num2) public pure {
    assert(num1 < num2);
  }
}
