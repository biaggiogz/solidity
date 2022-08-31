//SPDX-License-Identifier: MIT
pragma solidity ^0.8;
contract HelloWorld {

   string public var1 = "hello biaggio";
   uint256 var2 ;

   constructor (uint256 _var2)    {
       var2 = _var2;
   }

   function setVar(uint256 _var2) public {
        var2 = _var2;
   }

   function getVar() public view returns (uint256){
       return var2;
   }

   function getNumber() public pure returns (uint256){
       return 50;
   }
}

