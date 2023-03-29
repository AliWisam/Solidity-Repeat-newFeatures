// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8;

contract SafeMath{

// a funtoon for testing underflow.

    function testUnderFlow() public pure returns(uint){
        uint x = 0;
        x--;
        return x;
    }
  // it will work and returns a number
    function testUnchekedUnderflow() public pure returns(uint){
        uint x = 0;
        unchecked {x--;}
        return x;
    }
}