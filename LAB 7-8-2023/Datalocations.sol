// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
// contract StorageDLoc {

//  uint[] arr = [1,2,3]; // state variable
 
//  function fStorage() public{
//  // Declare a local storage variable xStorage
 
//  uint[] storage xStorage = arr;
 
//  xStorage[0] = 100;
//  }
 
//  function get() public view returns (uint[] memory){
 
//  return arr;
 
//  }




















// /}



// contract memorymanagement {
    
//  function modifyMemory(uint[] memory originalArray) public pure
// returns (uint[] memory) {

//  // Assign the input array to a new variable in memory

//  uint[] memory newArray = originalArray;

//  // Modify a value within the new array

//  if (newArray.length > 0) {

//  newArray[0] = 999;

//  }

//  return originalArray; // Return the original array



// }





// }














// contract calldataDloc {

//  function fCalldata(uint[] calldata _x) public pure

// returns(uint[] calldata){
// //  _x[0] = 0;
//  return(_x);
//  }
// }




contract Excercise {

struct CAR {
    string name;
    string model;
    uint year;
}

CAR car=CAR("Toyota", "Prado", 2000); 


function initCar1() public returns (CAR memory state, CAR  memory local) {
 CAR storage _car = car;
 _car.name="alto";
 _car.model="kia";
 _car.year=2012;

 return (car, _car) ;
}

function initCar2() public view returns (CAR memory state, CAR  memory local) {
 CAR memory _car = car;
 
}





}




