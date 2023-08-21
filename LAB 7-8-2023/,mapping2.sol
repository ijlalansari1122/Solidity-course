// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


contract Mappings {
    


mapping (address => mapping(string => mapping (string => uint))) public  AddrWalletToName;



function Addvalue(address _addr , string memory _walletname ,string memory _name   ,uint _uint) public {


    AddrWalletToName[_addr][_walletname][_name]=_uint;

}

function get(address _addr , string memory _walletname ,string memory _name  ) public  view returns(uint) {


    return AddrWalletToName[_addr][_walletname][_name];

}




function Addvalue(address _addr , string memory _walletname ,string memory _name   ) public {


    delete AddrWalletToName[_addr][_walletname][_name];

}



}