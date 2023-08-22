// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Eventer {
    address public Owner;

    event ZeroAddressInputted(string message);

    constructor(address _initialOwner) {
        Owner = _initialOwner;
        
        if (_initialOwner == address(0)) {
            emit ZeroAddressInputted("The address is zero");
        }
    }
}
