// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


contract NameMap {
mapping (uint => mapping(address => mapping (string => string))) public  UserMap;

// setter

function setter(uint _yearofbirth , address _walletaddress , string memory _codename , string memory _userName) public  {
    

UserMap[_yearofbirth][_walletaddress][_codename]=_userName;


}
// getter

function getter(uint _yearofbirth , address _walletaddress , string memory _codename  ) public view returns (string memory)  {
    

return  UserMap[_yearofbirth][_walletaddress][_codename];


}



// getter

function values(uint _yearofbirth , address _walletaddress , string memory _codename  ) public   {
    

delete  UserMap[_yearofbirth][_walletaddress][_codename];

}









}



