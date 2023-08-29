// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract  Ownable {
    
address public  owner;


event LogOwnershipTransfered(address indexed  _currentowner , address indexed  _newowner);


modifier add(){
    require(msg.sender == owner);
    _;
}

constructor() {
    owner =msg.sender;
}

}