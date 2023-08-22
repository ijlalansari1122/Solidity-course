// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


contract Numbers {
    
function  numgive(int userInput ) public  returns (int x) {
    
int neg ;
int positiveEven ;
int positiveOdd ;


if (userInput <0) {

    neg =userInput ; 

emit Localvar("Negative value should return");
    return neg;


} else if (userInput >0) {
    
positiveEven =userInput;
emit Localvar("positive even value should return");
return positiveEven;

} else  if (userInput> 0 && userInput % 2 == 1) {

    positiveOdd =userInput;
emit Localvar("positive odd value should return");
return  positiveOdd;


}


}


event Localvar (string messsage);


}