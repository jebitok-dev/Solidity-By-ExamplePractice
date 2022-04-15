// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

contract Base {
    // private function
    function privateFunc() private pure returns (string memory) {
        return "Private function called with this contract"
    }
    // 
    function testPrivateFunc() public pure returns (string memory) {
        return privateFunc();
    }

    function internalFunc() internal pure returns (string memory) {
        // function called inside this contract and inside contracts that inherit this contract
        return "internal function called";
    }

    function testInternalFunc() public pure virtual returns (string memory) {
        return internalFunc();
    }

    // public function: called inside contract/contract that inherit this contract & other contract/accounts
    function publicFunc() public pure returns(string memory) {
        return "public function called";
    }

    // external function called by other contracts & accounts & only compiles when called outside thos contract
    function externalFunc() external pure returns (string memory) {
        return "external function called";
    }

    // State variables
    string private privateVar = "my private variable";
    string internal internalVar = "my internal variable";
    string public publicVar = "my public variable";
}

contract Child is Base {
    // Internal functions can be called inside child contracts
    function testInternalFunc() public pure override returns (string memory) {
        return internalFunc();
    }
}