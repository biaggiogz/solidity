// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

contract Banco {
    uint storedData; // State variable
    // ...

    constructor (){

    }

    function globalvars() external view returns  (address,uint,uint)  {
        address sender = msg.sender;
        uint timestamp = block.timestamp;
        uint number = block.number;

        return (sender,timestamp,number);

    }
}