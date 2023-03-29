// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8;

// Salted contract creations / create2
contract D {
    uint public x;
    constructor(uint a) {
        x = a;
    }
}

contract Create2 {
    // 1, prepare salt by pasing constructor aruguments
    function getBytes32(uint salt) external pure returns (bytes32) {
        return bytes32(salt);
    }

    //2, get the address fo contract that is to be deployed
    function getAddress(bytes32 salt, uint arg) external view returns (address) {
        address addr = address(uint160(uint(keccak256(abi.encodePacked(
            bytes1(0xff),
            address(this),
            salt,
            keccak256(abi.encodePacked(
                type(D).creationCode,
                arg
            ))
        )))));

        return addr;
    }

    address public deployedAddr;  
    //3, pass the salt and constructor arguments for new contract  
    function createDSalted(bytes32 salt, uint arg) public {
        D d = new D{salt: salt}(arg);
        deployedAddr = address(d);
    }
}