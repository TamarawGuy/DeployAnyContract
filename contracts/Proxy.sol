// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract Proxy {
    event Deploy(address _addr);

    fallback() external payable {}

    function deploy(bytes memory _code) public payable returns (address _addr) {
        assembly {
            _addr := create(0, add(_code, 0x20), mload(_code))
        }
        require(_addr != address(0), "Proxy: Failed on deploy");

        emit Deploy(_addr);
    }

    function execute(address _target, bytes memory _data) public payable {
        (bool success, ) = _target.call{value: msg.value}(_data);
        require(success, "Proxy: Failed on execute");
    }

    receive() external payable {}
}
