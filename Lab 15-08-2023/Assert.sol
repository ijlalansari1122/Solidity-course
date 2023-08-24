// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


contract  asserted {
    

function  sum1(uint8 _num1 , uint8 _num2) public pure returns (uint) {
    
uint sum;

sum=_num1+_num2;

assert(sum<256);

return sum;
}



}

contract OwnerShipTransfer{

mapping(uint256 => address) private owners;

function transferOwner3(uint256 ID, address newOwner) public {

assert(owners[ID] == msg.sender);

owners[ID] = newOwner;

}

}



