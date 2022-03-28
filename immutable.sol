// SPDX-License-Identifier: MIT;

pragma solidity ^0.8.10;

contract Immutable {
    // uppercase
    address public immutable MY_ADDRESS;
    address public immutable MY_UINT;

    // set inside constructor and can't be modified afterwards
    constructor(uint _myUint) {
        MY_ADDRESS = msg.sender;
        MY_UINT = _myUint;
    }
}