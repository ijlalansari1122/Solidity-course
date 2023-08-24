// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;




contract  arrayed {
    uint256[] public  array;

function getter() public view returns (uint256[] memory) {
    return array;
}

function  push_elem(uint256 x ) public  {
    
array.push(x);
 
}

// pop
function  pop_elem() public  {
assert(array.length !=0);
array.pop();    

 
}





}

