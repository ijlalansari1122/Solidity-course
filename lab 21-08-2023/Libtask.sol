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
    
 // Import the SDP library
    using SDP for uint;

 struct Result {
        uint addResult;
        uint subtrResult;
        uint divideResult;
        uint powResult;
    }

    function get() public pure returns (Result memory) {
        Result memory results;
        
        results.addResult = uint(2).add(3);
        results.subtrResult = uint(2).subtr(3);
        results.divideResult = uint(2).divide(3);
        results.powResult = uint(2).pow(3);
        
        return results;
    }









}