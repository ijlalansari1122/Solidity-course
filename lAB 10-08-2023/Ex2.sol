// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract  PersonContract {
    
// personinfo struct\

struct PersonInfo{
string  name;
uint age;
string gender;
address Address;
}

PersonInfo public   p1;


// event update


event Update(

PersonInfo OldValue,
PersonInfo newValue,
uint256  timestamp,
uint256  blocknumber


);


// setter

function setPersonInfo(PersonInfo memory  newperson ) public    {
    PersonInfo memory OldValue =p1;

p1 =newperson;

    emit Update(OldValue, newperson, block.timestamp, block.number);


}




}