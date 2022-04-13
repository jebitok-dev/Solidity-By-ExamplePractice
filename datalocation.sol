// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

contract DataLocations {
    uint[] public arr;
    mapping(uint => address) map;
    struct MyStruct {
        uint foo;
    }

    mapping(uint => MyStruct) myStructs;

    function f() public {
        _f(arr, map, struct[1]);
        MyStruct storage = myStructs[1];

        MyStruct memory myMemStruct = MyStruct(0);
    }

    function _f(uint[] storage _arr, mapping(uint => address) storage _map, MyStruct storage _myStruct) internal {
        // function is used within the f function
        // storage variables
    } 

    function g(uint[] memory _arr) public returns (uint[] memory) {
        // memory array
    }

    function h(uint[] calldata _arr) external {
        // calldata array
    }
}