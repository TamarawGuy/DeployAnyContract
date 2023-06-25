// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract Test1 {
    address public owner = msg.sender;

    function setOwner(address _owner) public {
        require(_owner != address(0), "Invalid address");
        owner = _owner;
    }
}
