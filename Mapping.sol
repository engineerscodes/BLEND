pragma solidity ^0.8.7;

contract test{
    mapping(uint =>bool) public maps;

    function setValue(uint index) public{
        maps[index]=true;
    }
}
