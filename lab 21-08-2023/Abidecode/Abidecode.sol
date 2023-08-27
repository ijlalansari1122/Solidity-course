// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.17;

contract  Abidecode {
    
    function  encode(address _address , uint data) public  pure returns(bytes memory) {
    
    return (abi.encode(_address , data));
}

    function decode(bytes memory data) public pure returns(address daddr,
uint dnum) {
 (daddr, dnum) = abi.decode(data, (address, uint));



}



}