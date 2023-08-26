// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.17;

library  SDP {

  function  add(uint x , uint y) public pure returns (uint ) {
  return x +y ;

  }  

  function  subtr(uint x , uint y) public pure returns (uint ) {
  return x -y ;

  }  

  function  divide(uint x , uint y) public pure returns (uint ) {
  return x /y ;

  }  

  function  pow(uint x , uint y) public pure returns (uint ) {
  return x **y ;

  }  


}



contract getsdp {
    
function  get() public view returns (uint)  {
    return add();
}










}