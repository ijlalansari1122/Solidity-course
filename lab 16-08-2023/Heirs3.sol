// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.17;

contract Engine   {
    
uint256 public  horsepower;
constructor( uint256 _horsepower) {
    horsepower =_horsepower;
}

}


contract Transmission   {
    
string public  gearType;
constructor( string memory _geartype) {
    gearType =_geartype;
}

}


 contract   Car is Engine(21212899) , Transmission("ferrari") {


function  get( ) public view returns (uint256 , string memory) {
    return (horsepower , gearType) ;
}


}
    



