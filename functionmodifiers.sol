// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

contract FunctionModifier {
    address public owner;
    uint public x = 10;
    bool public locked;

    modifier onlyOwner() {
        // modifier to check caller of the contract is the owner
        owner = msg.sender;
        _; // special character used inside modifier function & tells solidity to execute the rest of the code
    }

    modifier validAddress(address _addr) {
        // checks that the address passed in is not the zero address i.e validate valid address
        require(_addr != address(0), "Not valid address")
    }

    function changeOwner(address _newOwner) public onlyOwner validAddress(_newOwner) {
        owner = _newOwner;
    }

    // modifiers called before or after function to prevent from being called while its still executing
    modifier noReentrancy() {
        require(!locked, "No reentrancy");
        locked = true;
        _;
        locked = false;
    }

    function decrement(uint i) public noReentrancy {
        x -= i;

        if(i > 1) {
            decrement(i - 1);
        }
    }
}