//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FunctionOutputs{

    function returnMany() public pure returns  (uint,bool){
        return (1,true);
    }// return multiples values

     function named() public pure returns  (uint x ,bool b){
        return (1,true);
    }// name returns values

     function assigned() public pure returns  (uint x ,bool b){
        x = 1;
        b = true;
    }// assigne direct values

    function destructionAssigned() public pure {
            (uint z, bool p) = returnMany();
            (, bool _p) = returnMany();
    }

}