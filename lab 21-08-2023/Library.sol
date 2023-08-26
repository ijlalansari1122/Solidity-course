// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.17;


library Explibrary {
 function exponential( uint256 a, uint256 b) public pure returns
(uint256) {
 return a ** b ;
 }
}
contract SumContract {
 function Sum( uint256 a, uint256 b) public pure returns (uint256) {
 return a + b ;
 }
}
contract LibraryClient {
 

 function GetExponential(uint256 firstVal, uint256 secondVal)
public pure returns(uint256) {
 return Explibrary.exponential(firstVal, secondVal);
 }

SumContract public foo = new SumContract();
 function Sum(uint256 firstVal, uint256 secondVal) public view  
returns(uint256) {
 return  foo.Sum(firstVal, secondVal);
 }

}
