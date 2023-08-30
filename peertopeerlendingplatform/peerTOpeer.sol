// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "./safeMath.sol";
import "./Credit.sol";

contract peerTOpeer is Ownable {
    using safeMath for uint256;

    // user managment

    struct User {
        bool credited;
        address activeCredit;
        bool Fraudstatus;
        address[] allCredits;
    }

    // Storing data

    // all users data in mapping

    mapping(address => User) public users;

    // Array of all credits addresses

    address[] public credits;

    // EVENTS


event LogCreditedCreated(address indexed _address , address indexed _borrower , uint indexed timestamp);


event LogCreditedStateChanged(address indexed _address , Credit.State indexed state , uint indexed timestamp);


event LogCreditedActiveChanged(address indexed _address , bool indexed active , uint indexed timestamp);

event LogUserSetFraud(address indexed _address , bool  fraudStatus , uint timestamp);






// -------------Functions---------------------------//


function  applyForCredit(uint requestedAmount , uint repaymentsCount , uint interest ,bytes memory creditDescription) public   returns (address _credit) {
    
require(users[msg.sender].credited==false);

require(users[msg.sender].Fraudstatus==false);

assert(users[msg.sender].activeCredit ==address(0));

users[msg.sender].credited=true;

// creating new contract credit

Credit credit = new Credit(requestedAmount ,repaymentsCount , interest , creditDescription);


// set the users active credit contract.
users[msg.sender].activeCredit = address(credit);



// add the credit contract to our list with contracts

credits.push(address(credit));

// add the credit to the user,s profile
users[msg.sender].allCredits.push(address(credit));


// log the credit creation event
emit LogCreditedCreated(address(credit), msg.sender, block.timestamp);


// return the address of the newly created credit contract.

return address(credit);




}


function getCredits()public view returns (address[] memory) {
    return  credits;
}




function getUserCredits()public view returns (address[] memory) {
    return  users[msg.sender].allCredits;
}


function setFraudStatus(address _borrower) external returns (bool) {
    // update 
    users[_borrower].Fraudstatus =true;
// log fraud status

emit LogUserSetFraud(_borrower, users[_borrower].Fraudstatus, block.timestamp);

return users[_borrower].Fraudstatus;
}



// change credit state

function  changeCreditState(Credit _credit , Credit.State state ) public onlyOwner {
    
// call credit contract changestate

Credit credit = Credit(_credit);
credit.changeState(state);

// log state change

emit LogCreditedStateChanged(address(credit), state, block.timestamp);




}



// change credit state

function  ToggleCreditState(Credit _credit  ) public onlyOwner {
    
// call credit contract changestate

Credit credit = Credit(_credit);
bool active = credit.toggleActive();

// log state change

emit LogCreditedActiveChanged(address(credit), active , block.timestamp);




}



}
