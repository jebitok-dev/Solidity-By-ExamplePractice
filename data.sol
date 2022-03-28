// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

// data types: boolean, uint, int, address, bytes
contract Primitives {
    bool public boo = true;

    // uint: unsigned integer: non-negative integers of different sizes
    // uint8 ranges from 0 to 2**8 -1
    // uint8 ranges from 0 to 2 ** 16 - 1
    // uint256 ranges from 0 to 2 ** 256 - 1
    uint8 public u8 = 1;
    uint public u256 = 456;
    uint public u = 123; // uint stands for uint256

    // int allows negative integersof different ranges ranging from int8 to int256
    // int256 ranges from -2 ** 255 to 2 ** 255 - 1
    // int128 ranges from -2 ** 127 to 2 ** 127 - 1
    int8 public i8 = -1;
    int public i256 = 456;
    int public i = -123; // int stands for int256

    // min & max int
    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;

    // bytes represent sequence of bytes
    // 2 types of bytes types: fixed-size & dynamically-sized byte arrays
    // solidity uses dynamically-sized array of bytes byte[](shorthand)

    bytes1 a = 0xb5; [10110101]
    bytes1 b = 0x56; [01010110]

    // default values: unassigned variables have default value
    bool public defaultBoo; // false
    uint public defaultUint; // 0
    int public defaultInt; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000
