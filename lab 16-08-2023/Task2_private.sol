// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.17;


contract  Bank {
    
uint private  balance;

function getter() internal view returns (uint) {
    return balance;
}
function  deposit(uint fund) public  {
    
balance+=fund;

}



}


contract  BankUser is Bank {
   function  called() public  {
       
    deposit(2124);   
   }

 function get() public view   returns(uint)   {
    return   getter();
 }
}
