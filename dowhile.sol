// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Loop {
    function palindrome(uint256 input) public pure returns (bool) {
        uint256 temp = input;
        uint256 digit;
        uint256 rev;

        do { 
            digit = temp % 10;
            rev = (rev * 10) + digit;
            temp = temp / 10;
        } while (temp != 0);

        if (temp != 0) {
            return true;
        } else {
            return false;
        }
    }
}
