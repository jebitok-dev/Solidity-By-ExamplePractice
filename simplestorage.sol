// SPDX-License-Identifier: MIT;
pragma solidity ^0.8.10;

contract SimpleContract {
    // state variable to store number
    uint public num;

    // write to state variable(num) by sendind transaction
    function set(uint _num) public {
        num = _num;
    }  

    // read from state varible without sending transaction
    function get() public view returns (uint) {
        return num;
    }
}