// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

contract Fallback {
    event Log(uint gas);

    // declared as external
    fallback() external payable {
        // send or transfer function forwards 2300 gas to this fallback function
        // call forwards all of the gas
        emit Log(gasleft());
    }

    // helper function to check balance of this contract
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}

contract SendToFallback {
    function transferToFallback(address payable _to) public payable {
        _to.transfer(msg.value);
    }

    function callFallback(address payable _to) public payable {
        (bool sent, ) = to.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }
}
