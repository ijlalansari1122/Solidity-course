// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Revert {
    mapping(uint256 => address) private owners;
 function TransferOwner2(uint256 ID, address newOwner) public {
        if (owners[ID] != msg.sender) {
            revert("Transfer not Owner");
        }
        owners[ID] = newOwner;
    }
}


contract quotientcalculator {


 
function  calculateQuotient(uint256 numerator ,uint256 denominator ) external  
pure returns (uint256)  {
    if (denominator ==0) {
revert("Division by zero is not allowed");
        
    }
    
return numerator/denominator;
}

}