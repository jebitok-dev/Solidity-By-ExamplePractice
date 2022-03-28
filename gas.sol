// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Gas {
    // Gas - computational unit of amount of Ether you need to pay for transaction
    // gas spent - total amount of gas used in transaction
    // gas price - amount of ether - willing to pay per gas
    // transaction with higher gas price - higher priority 2b included in a block
    // unspent gas is refunded
    uint public i = 0;

    //using all gas makes transaction fail- state changes to undone & spent gas is not refunded
    function forever() public {
        while(true) {
            i += 1;
        }
    }
}