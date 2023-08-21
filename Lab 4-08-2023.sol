// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract merkle {
    
function add(uint x , uint y) private   pure   returns (uint) {
   

   return  x +y;

}

uint256[] values = [1,2,3,4];   
function merkletree() public  returns (uint256 )  {

    

    
    
    while (values.length>1){ 
        if (values.length % 2 ==1) {
     values.push(0);   
    }


        for (uint i=0; i <values.length/2; i++) 
        {
     
        values[i] = add(values[i*2], values[i*2+1]);
        
    }
        for (uint i=0; i <values.length; i++) 
        {
     values.pop();
    }
    

    // v(values.length+1)/2;
}
return  values[0];


}

function get() public view returns (uint [] memory) {
    return  values;
}




 



}