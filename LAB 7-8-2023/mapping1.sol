// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract  mappings {
    

mapping (address => string ) public Addtoname;




function  Addvalue(address _addr , string memory _name) public  {

Addtoname[_addr] = _name;

}


function  get(address _adr) public view returns (string memory) {
    return Addtoname[_adr];


}


function  Reset(address _adr) public  {
    delete Addtoname[_adr];
}



}


contract  Mapper {
    

mapping (string => uint ) public NametoBalance;


function  Set(string memory _str , uint _uint ) public  {
    
NametoBalance[_str] = _uint;

}




function get(string memory _str) public  view returns (uint)  {
    

return NametoBalance[_str];

}






function remove(string memory _str) public  {
    delete  NametoBalance[_str];
}


}


