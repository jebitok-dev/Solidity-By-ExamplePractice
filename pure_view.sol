// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract ViewAndPure {
    uint public x = 1;

// promise not to modify the state
    function addToX(uint y) public view returns (uint) {
        return x +y;
    }

    // promise not to modify or read from the state
    function add(uint i, uint j) public read returns(uint) {
        return i + j;
    } 
}