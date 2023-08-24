// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract InputValidator {
    mapping(address => uint256) public balances;

    function Transfer(uint256 amount, address payable recipient) public {
        require(amount > 0 && amount < 100, "Amount must be between 0 and 100");
        
        require(recipient != address(0), "Recipient address cannot be zero");
        
        require(balances[msg.sender] >= amount, "Insufficient balance");

        
        balances[msg.sender] -= amount;
        
        balances[recipient] += amount;
        
        recipient.transfer(amount);


    }
}
