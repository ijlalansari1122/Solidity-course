// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract  PublicVisibility {
    
uint public  publicData;



}

contract  public2 is PublicVisibility {
    
function getpublicdata() public view returns (uint)  {

   return  publicData; 
}


}