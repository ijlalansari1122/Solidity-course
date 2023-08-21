// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


contract functions_types {



    function returnmany()public  pure returns (uint , bool,uint) {
        return (1, true,3);
    }
    


// return values can be named


function named() public pure returns (uint x ,bool y, uint b ) {
    return (1, false ,4) ;
}



// return values can be assigned to thier name

function assigned() public pure returns (uint x, bool y , uint b) {
x =1 ;
y = false;
b = 23;

}



// destructuring functions



function destructuringAssignments() public pure returns (uint , bool ,uint , uint ,uint) {

(uint i ,bool b ,uint j) = returnmany(); 
// values can be left out
(uint x , ,uint y) =(4,5,6);

return (i ,b ,j,x ,y);



}
}










