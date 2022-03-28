// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Variables {
    // state variables: stored on blockchain
    string public text = "hello";
    uint public num = 123;

    function doSomething() public {
        // local variables: not saved to the blockchain
        uint i = 456;

        // global variables: present on the blockchain
        uint timestamp = block.timestamp; // current block timestamp
        address sender = msg.sender; // address of caller
    }
}