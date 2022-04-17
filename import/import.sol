// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

import "./Foo.sol";

contract Import {
    // initialize Foo
    Foo public foo = new Foo();

    function getFooName() public view returns (string memory) {
        return foo.name();
    }
}

contract 