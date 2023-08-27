// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.17;

interface   Token {
    
function  transfer(address to , uint256 amount) external ;

}


    contract  Tokencontract is Token {
         mapping(address => uint256) public balances;

    function transfer(address recipient, uint256 amount) public override {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        
        balances[msg.sender] -= amount;
        balances[recipient] += amount;
    }

    
}
