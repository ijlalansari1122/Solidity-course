// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.17;

contract   Encoded {
    
struct Laptop{
string name  ;
uint model; 
string maker; 
uint warranty; 


}


function enoded(Laptop memory laptop ) public pure returns (bytes memory result) {
 result =abi.encode(laptop);   


}




}