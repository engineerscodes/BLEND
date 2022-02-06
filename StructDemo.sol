pragma solidity^0.8.7;

contract Structs{
    struct test{
        uint value;
    }

    test public value;

    function setValue(uint val) public{
        value.value=val;
    }

    function getValue() public view returns(uint)
    {
        return value.value;
    }
}
