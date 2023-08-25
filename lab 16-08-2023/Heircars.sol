// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.17;


contract  Car {
    
string public  make;
uint public  model;

function setvalue(string memory _make , uint _model) public  returns (string memory , uint) {
    make = _make;
    model = _model;
return (make , model);
}


}
contract  Hybridcar  is Car   {
    uint public  gasTankCapacity;
function setvalue2( uint _gascapac) public  returns ( uint) {
    gasTankCapacity = _gascapac;
    
return gasTankCapacity;
}


}


contract  ElectricCar  is Car   {
    uint public  batteryCapacity;
function setvalue2( uint _batcapac) public  returns ( uint) {
    batteryCapacity = _batcapac;
    
return batteryCapacity;
}


}



