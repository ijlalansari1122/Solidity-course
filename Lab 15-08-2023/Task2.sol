// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


contract QuotientCalculator {


function  calculateQuotient(uint256 numerator ,uint256 denominator ) external  
pure returns (uint256)  {
    
require(denominator !=0 , "Division by zero is not allowed");
return numerator/denominator;

}




}