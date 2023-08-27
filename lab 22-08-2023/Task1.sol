// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract PaymentContract {
    event PaymentReceived(address indexed sender, uint256 amount);

    function receivePayment() public payable {
        emit PaymentReceived(msg.sender, msg.value);
    }
}
