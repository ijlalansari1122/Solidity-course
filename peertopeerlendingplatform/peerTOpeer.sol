// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "./safeMath.sol";
import "./Credit.sol";

contract  peerTOpeer is Ownable {


using safeMath for uint;


// user managment

struct User{

bool credited;
address activeCredit;
bool Fraudstatus;
address[] allCredits;


}



// Storing data

// all users data in mapping

mapping (address => User) public  users;

// Array of all credits addresses

address[] public  credits;




// EVENTS











}