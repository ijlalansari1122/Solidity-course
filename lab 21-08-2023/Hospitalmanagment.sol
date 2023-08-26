// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Person {
 string public  name;
 uint public age;
 constructor (string memory _name,uint _age ) {
 name = _name;
 age= _age; 

 
 }
}
 contract  patient is Person {
 string public disease;

constructor(string memory _name , uint _age , string memory _disease  ) Person(_name , _age)  {
    
    disease = _disease;
}



}


contract  HospitalManagmentsystem {
    
    patient[] private  patients;
    
 constructor (string memory _name , uint _age , string memory _disease) {
 patient  newpatiient = new patient(_name, _age , _disease);
 patients.push(newpatiient); 
 
 }


function get() public  view returns (uint) {
    return patients.length;
}


}