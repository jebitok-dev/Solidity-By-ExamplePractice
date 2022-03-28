// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Loop {
    //for loop
    function loop() public {
        for (uint i = 0; i < 10; i++) {
            if(i == 3) {
                // next iteration follows 
                continue;
            }
            if(i == 5) {
                // loop ends 
                break;
            }
        }
        // while loop
        uint j;
        while (j < 10) {
            j++;
        }
    }
}