// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

contract Payable {
    address payable public owner;

    constructor() payable {
        owner = payable(msg.sender); // can receive ether
    }

    // function to deposit ether unto this contract balance of contract gets updated automatically
    function deposit() public payable {}

    // its not payable
    function notPayable() public {}

    // withdraw ether from this contract
    function withdraw() public {
        // amount of Ether stored in this contract
        uint amount = address(this).balance;

        // send all ether to owner: owner can receive since address is payable
        (bool success, ) = owner.call{value: amount}("");
        require(success, "Failed to send Ether")
    }

    // function to transfer Ether from this contract to address from input
    function transfer(address payable _to, uint _amount) public {
        (bool success, ) = _to.call{value: _amount}("");
        require(success, "Failed to send Ether");
    }
}