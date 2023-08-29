// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.17;
library  safeMath
 {

    //  multiplications
function  mul(uint256 a, uint256 b)internal pure returns (uint256) {
    

if ( a ==0) {

    return 0;
}
uint256 c =a*b;
assert(c/a ==b);

return c;
}

// divisions

function  div(uint256 a , uint256 b)internal pure returns (uint256) {
    uint256 c =a/b;
    return c;
}
// addition

function  add(uint256 a , uint256 b)internal pure returns (uint256) {
    uint256 c =a+b;
    assert(c>=b);
    return c;
}

// subtraction

function  sub(uint256 a , uint256 b)internal pure returns (uint256) {
    
    assert(b<=a);
    return a-b;
}




}