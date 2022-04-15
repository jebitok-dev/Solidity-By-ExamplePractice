// SPDX-License-Indentifier: MIT

pragma solidity ^0.8.10;

contract X {
    string public name;
    constructor(string memory _name) {
        name = _name;
    }
}

contract Y {
    string public text;

    constructor(string memory _text) {
        text = _text;
    }
}

contract B is X("input to X"), Y("input to Y) {

}

contract C is X, Y {
    constructor(string memory _name, string memory _text) X(_name) Y(_test) {}
}

contract D is X, Y {
    constructor() X("X was called") Y("Y was called") {}
}

contract E is X, Y {
    constructor() Y("Y was called") X("X was called") {}
}

constr