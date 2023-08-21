// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


struct BankAccount{

uint256 accountID;
uint256 Balance;
address owner;



}



contract  namkdata {
    BankAccount public   Bank;

// method 1

    function initbank1() public {
      BankAccount storage _bank = Bank;
_bank.accountID= 1;
_bank.Balance= 100;
_bank.owner= 0xb794F5eA0ba39494cE839613fffBA74279579268;
 

    }


// method 2


function initbank2()public  {
    Bank.accountID=1;
    Bank.Balance=100;
    Bank.owner=0xb794F5eA0ba39494cE839613fffBA74279579268;

}

// method 3


function initbank3()public  {
    Bank=BankAccount(1 ,100,0xb794F5eA0ba39494cE839613fffBA74279579268);
}


// method 4


function initbank4()public  {
    Bank =BankAccount({accountID: 1 ,Balance:100,owner:0xb794F5eA0ba39494cE839613fffBA74279579268});

}


// combine getter

function combinegetter() public view returns (BankAccount memory , BankAccount memory , BankAccount memory) {
    return (Bank ,Bank ,Bank);
}




}