// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.17;


contract  BaseUser {

address public  baseaddr =0xd2f1EBE609252b10319529549AdA292e3b7A8a75;

function  print() public virtual  returns(address)  {
    return baseaddr;
}

}

contract   Moderator is BaseUser{
    
address public Addr =0xd2f1EBE609252b10319529549AdA292e3b7A8a75;
string public name = "ijlalansari";

function  Print() public  virtual  returns(address , string memory) {
    return (Addr , name);
}

}


contract  Admin is Moderator {

address public Addr1 =0xd2f1EBE609252b10319529549AdA292e3b7A8a75;
string public name2 = "Ansari";
uint public PIN = 89;


function    Print() public  virtual override  returns(address , string memory  ) {
    return (Addr1 , name2 );
}





}