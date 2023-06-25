// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract Test2 {
    address public owner = msg.sender;
    uint256 value = msg.value;
    uint256 public x;
    uint256 public y;

    constructor(uint256 _x, uint256 _y) {
        x = _x;
        y = _y;
    }
}
