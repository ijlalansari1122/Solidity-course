// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;



 contract Base {

 string public base = "Base Contract";

 function foo() public view virtual returns (string memory) {

 return base;
  }
}
contract Middle is Base {
 string public middle = "Middle Contract";
 function foo() public view virtual override returns (string memory) {
 return middle; }
}

contract Derived is Middle {

 string public derived = "Derived Contract";

 function foo() public view virtual override returns (string memory) {

 return derived; }
}