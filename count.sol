// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Counter {
    uint public count;

    // returns the current count
    function get() public view returns(uint) {
        return count;
    }

    // increments count by 1
    function increment() public {
        count+=1;
    }

    // decrement count by 1
    function decrement() public {
        count-=1;
    }
}