// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract TodoList{
    struct todo{
        string text;
        bool completed;

    }
    todo[] public todos;

    function create (string calldata _text) external {
        todos.push(todo({
            text : _text,
            completed:false
        }));
    }

    function update(uint _index, string calldata _text) external {
            todos[_index].text = _text;
    }

    function get(uint _index) external view returns (string memory, bool){
            todo memory todoss = todos[_index];
            return (todoss.text, todoss.completed);
    }






}