// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract  error {
    
mapping(uint256 => address) private owner;

function  transferOwner(uint256 ID , address newOwner) public  {
    
require(owner[ID] == msg.sender , "Transfer Not Owner");

owner[ID] = newOwner;

}


}