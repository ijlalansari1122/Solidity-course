// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.17;


contract  FamilyFortune {

uint internal inheritance;


function  addInheritance(uint amount) internal  view  {
    
  amount +=inheritance;





}



}



contract  Heir  is FamilyFortune {
    
function  Inherited(uint amount) internal view    {
    addInheritance(amount);
}

}