// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8;

// import {symbol as alias, symbol2} from "filename";

 import {Unauthorized, helper as h1 } from "./OutSideFunctions.sol";

    function helper(uint x) view returns(uint){

    }
 
contract UsingOutSideFunction {

    address payable owner = payable(msg.sender);

    //slightly cheaper than withDraw
    function withDrawWithCustomError() public  {

        if(msg.sender != owner){
            revert Unauthorized(msg.sender);
        owner.transfer(address(this).balance);

        }
         
}
}