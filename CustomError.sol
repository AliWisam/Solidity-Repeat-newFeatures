// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8;
 
     error Unauthorized(address callers);

 contract CustomError { 

     address payable owner = payable(msg.sender);

    //slightly cheaper than withDraw
    function withDrawWithCustomError() public  {

        if(msg.sender != owner){
            revert Unauthorized(msg.sender);
        owner.transfer(address(this).balance);

        }
    }
 





    // this funciton will cost more gas fees
     function withDraw() public {

         if(msg.sender!= owner){

        revert("error,error,error,error");

        owner.transfer(address(this).balance);


         }
     }



 }