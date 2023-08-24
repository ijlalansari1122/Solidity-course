// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


contract  Driver_license {
    
error tooyoung(string message , uint requiredage);


function  DriverID(uint age) public pure  returns (uint x) {
    if (age >= 18) {
        x = 211212;

    } else {
        revert tooyoung("the person is minor" , 14);
    }
}


}