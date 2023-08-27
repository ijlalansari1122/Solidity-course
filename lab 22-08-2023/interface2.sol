// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
interface Calculator {
 function getResult() external view returns(uint);
}
contract Temp is Calculator {
 constructor() {}
 function getResult() external pure returns(uint result){
 uint a = 2;
 uint b = 5;
 result = b / a;
 }
}