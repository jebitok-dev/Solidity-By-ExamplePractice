// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

contract Mapping {
    // mapping address to uint
    mapping(address => uint) public myMap;

    function get(address _addr) public view returns (uint) {
        // mapping returns a value: if not set it returns default value
        return myMap[_addr];
    }

    function set(address _addr, uint _i) public {
        // value of mapping can be updated
        myMap[_addr] = _i;
    }

    function remove(address _addr) public {
        // can reset its value to default value
        delete myMap[_addr];
    }
}

contract NestedMapping {
    // nest one mapping inside another one 
    mapping(address => mapping(uint => bool)) public nested;
     function get(address _addr1, uint _i) public view returns (bool) {
         // you can get values of nested mapping even when uinitialized
         return nested[_addr1][_i]
     }  

     function set(address _addr1, uint _i, bool _boo) public {
         nested[_addr1][_i] = _boo;
     }

     function remove(address _addr1, uint _i) public {
         delete nested[_addr1][_i]
     }
}