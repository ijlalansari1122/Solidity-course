// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract  Events {
    

address public owner;


constructor(address _owner) {
    owner = _owner;

}


function  NewOwner(address addr) public  {
    
owner = addr;
emit Ownerdata(msg.sender, addr);

}


event Ownerdata(address prevowner ,address newowner);








}

