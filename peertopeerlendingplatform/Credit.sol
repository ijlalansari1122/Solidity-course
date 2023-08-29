// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.17;

import "./safeMath.sol";
import "./Ownable.sol";
contract Credit is Ownable {

using safeMath for uint;
// state variables

address borrower;
uint requestedAmount;
uint returnAmount;
uint repaidAmount;
uint interest;

uint requestRepayments;
uint remainingRepayments;
uint repaymentInstallment;
uint requestDate;
uint lastRepaymentDate;


// bytes type
bytes description;
bool active =true;


// lenders count

uint lendersCount = 0;
// revoke count

uint revokeVotes = 0;

// revoketimeneeded

uint revokeTimeNeeded = block.timestamp+1 seconds;

// Fraud votes

uint fraudVotes = 0;

// Lenders
mapping (address => bool) lenders;

// lendersInvestedAmount

mapping (address=>uint) lendersInvestedAmount;


// fraudVoters
mapping(address => bool) fraudVoters;




// Enums

// state enum

enum  State {
    investment,
    repayment,
    interestReturns,
    expired,
    revoked,
    fraud
    
    
    
    }


State state;


// Events




// logcreditinit

event LogCreditInitialized(address indexed  _address , uint indexed timestamp);

// logscreditStatechanged
event LogCreditStateChanged(State indexed state , uint indexed timestamp);



// logscreditStateActivechanged
event LogCreditStateActiveChanged(State indexed active , uint indexed timestamp);

// logsBorrowerWithdrawal
event LogBorrowerWithdrawal(address indexed  _address ,uint indexed _amount, uint indexed timestamp);


// logsBorrowerRepaymentInstallment
event LogBorrowerInstallment(address indexed  _address , uint indexed timestamp);


// logsBorrowerRepaymentFinished
event LogBorrowerFinished(address indexed  _address , uint indexed timestamp);



// logsBorrowerChangeReturned
event LogBorrowerChangeReturned(address indexed  _address ,uint _amount, uint indexed timestamp);



// logsLenderInvestment
event LogLenderInvestment(address indexed  _address ,uint _amount, uint indexed timestamp);


// logsLenderWithdrawal
event LogLenderWithdrawal(address indexed  _address ,uint _amount, uint indexed timestamp);



// logsLenderChangeReturned
event LogLenderChangeReturned(address indexed  _address ,uint _amount, uint indexed timestamp);


// logsLenderVoteForRevoking
event LogLenderVoteForRevoking(address indexed  _address , uint indexed timestamp);



// logsLenderVoteForFraud
event LogLenderVoteForFraud(address indexed  _address , uint indexed timestamp);


// logsLenderRefunded
event LogLenderRefunded(address indexed  _address ,uint _amount ,uint indexed timestamp);








// -----------------------Modifiers-------------------------------//

// isActive

modifier isActive(){

require(active == true);
_;

}

// OnlyBorrower
modifier OnlyBorrower(){

require(msg.sender == borrower);
_;
}




// OnlyLender
modifier OnlyLender(){

require(lenders[msg.sender]);
_;
}



}