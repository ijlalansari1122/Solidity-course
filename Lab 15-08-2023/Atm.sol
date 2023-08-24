// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.17;

contract Atm {
    
uint public  CashAvailable;

error Insuffecient(string message , uint cash);



function Moneywithdraw(uint withdrawAmount) public view   {
    
if (CashAvailable < withdrawAmount) {
    
revert Insuffecient("cash is low" , 12);

}
}
function  ATMrefill(uint Refillamount) public  {
    CashAvailable +=Refillamount;



}


}






