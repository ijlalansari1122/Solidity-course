// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract  Personcontact {
    


struct PersonInfo{
string name ;
uint age ;
string gender;
uint salary;

}

PersonInfo public p1;

event Update(
PersonInfo OldValue , 
PersonInfo NewValue , 
uint256 timestamp ,
uint256 blockNumber 



);


function setter(PersonInfo memory) public   {
    PersonInfo memory OldValue = p1;

    emit Update(OldValue, p1, block.timestamp, block.number);
}





}
