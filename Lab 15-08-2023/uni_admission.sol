// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.17;

contract  uni_admission {
    

enum  Department {Civil, Mechanic , Electrical , Software }

mapping (uint => bool) public admissionStatus;

mapping (uint => Department) public  ChosenDepartment;

function  setAdmissionStatus(uint student , bool hasPassed ) public  {
 admissionStatus[student] = hasPassed;


}


function  chooseDepartment(uint student ,   Department selected_s) public  {
assert(admissionStatus[student] = true);

ChosenDepartment[student] = selected_s;

}







}