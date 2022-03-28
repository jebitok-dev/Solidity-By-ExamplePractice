// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract EtherUnits {
    // as one dollar = 100 cent, ether = 10 ** 18 Wei.
    uint public oneWei = 1 wei;
    bool public isOneWei = 1 wei == 1;

    uint public oneEther = 1 ether;
    // 1 ether is equal to 10^18 Wei
    bool public isOneEther = 1 ether == 1e18; 
    // 1 ether = 1 × 1018 (i.e. 1,000,000,000,000,000,000) wei
}