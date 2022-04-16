// SDPX-License-Identifier: MIT

pragma solidity ^0.8.10;

// deploy this contract first
contract B {
    // storage layout must be same as contract A
    uint public num;
    address public sender;
    uint public value;

    function setVars(uint _num) public payable {
        num = _num;
        sender = msg.sender;
        value = msg.value;
    }
}

contract A {
    uint public num;
    address public sender;
    uint public sender;

    function setVars(address _contract, uint _num) public payable {
        // A's storage is set B is not modified
        (bool success, bytes memory data) = _contract.delegateCall(
            abi.encodeWithSignature("setVars(uint256)", _num)
        );
    }
}