// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Event {
    

event data(string indexed Name ,   address indexed  Contractaddress , string Department    );
 event Log(address indexed sender, string msg);
 

 function test() public {
 
 emit Log(msg.sender,"hello web 3.0");
 
 emit Log(msg.sender, "It's all about Decentralization");
 
 emit data("ijlal", 0xd2f1EBE609252b10319529549AdA292e3b7A8a75, "cs");


}

}