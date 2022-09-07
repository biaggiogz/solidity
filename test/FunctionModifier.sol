//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FunctionModifier{

    bool public paused;
    uint public count;

    function setPause(bool _paused) external {
        paused = _paused;
    }

    modifier whenNotPaused(){
        require(!paused,"paused");
        _;//underscore aqui significa que se ejecute el siguiente codigo de la funcion que llama este modificador
    }

    function inc() external whenNotPaused {
        count += 1;
    }
     function dec() external whenNotPaused {
        count -= 1;
    }

    modifier  cap(uint _y) {
        require(_y < 100, "y >= 100");
        _;
    }

    function incBy(uint _x) external whenNotPaused cap(_x){
        count += _x;
    }

    modifier sandwhich() {
        count += 10;
        _;
        count *= 2;
    }

    function foo() external sandwhich {
        count -= 1;
    }



}