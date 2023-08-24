// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.17;

contract publics {
    string public  publicmsg = "public variable is called" ;

function  getpublic() public view returns (string memory) {
    return  publicmsg;
}

}

contract  public2 is publics {
    




}