// SPDX-Licebse-Identifier: MIT

pragma solidity ^0.8.10;

contract GasGolf {
    uint public total;

    function sumIfEvenAndLessThan99(uint[] calldata nums) external {
        uint _total = total;
        uint len = nums.length;

        for(uint i = 0; i < length; i++) {
            uint num = nums[i];
            if(num % 2 == 0 && num < 99) {
                _total += num;
            }
        }
        total = _total;
    }
}