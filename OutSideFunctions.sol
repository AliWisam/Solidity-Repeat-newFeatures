// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8;

error Unauthorized(address caller);
function helper(uint x) view returns (uint){
    return x * 2;
}

contract OutSideFunctions {

    function test() external view returns (uint){

        return helper(123);
    }

}