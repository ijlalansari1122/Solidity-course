// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.17;
import "./import01.sol";

contract Import {
 Callee public demo = new Callee();

 function getdemoName() public view returns (string memory) {
 return demo.name();
 }
}