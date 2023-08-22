// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


contract Eventer {
    

address public  Owner;
event zeroaddressinputed( string message);

constructor(address _initialOwner) {
if ( _initialOwner == address(0) ) {
emit zeroaddressinputed("hi there the address is zero");
}


    Owner = _initialOwner  ;
}




}