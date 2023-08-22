// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract NoPrime {
    
uint public num;



event Primecheck(string , uint);

// setter

function setter(uint _num) public  {
    num = _num;
}

// check
    function primeNo(uint _num) public view   returns  (bool) {
        if (_num <= 1) {
            return false;
        }

        for (uint i = 2; i * i <= num; i++) {
            if (num % i == 0) {
                return false;
            }
        }

        return true;
    }



function  check(uint number) public    {
    if (primeNo(number)) {
        emit Primecheck("The number is prime", 1);
    } else {
        emit  Primecheck("The number is not prime", 2);
    }
}








}