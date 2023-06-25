// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

import {Test1} from "./Test1.sol";
import {Test2} from "./Test2.sol";

contract Helper {
    function getBytecode1() public pure returns (bytes memory) {
        return type(Test1).creationCode;
    }

    function getBytecode2(
        uint256 _x,
        uint256 _y
    ) public pure returns (bytes memory) {
        return abi.encodePacked(type(Test2).creationCode, abi.encode(_x, _y));
    }

    function getCalldata(address _owner) public pure returns (bytes memory) {
        return abi.encodeWithSignature("setOwner(address)", _owner);
    }
}
