// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


contract Assert  {
    
function  substract(uint num1 , uint num2) public  pure returns (uint x) {
    uint sub;
    sub = num1-num2;


  assert(int(num1)-int(num2) >=0);
 
    return sub;
}

}