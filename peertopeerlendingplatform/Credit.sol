// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "./safeMath.sol";
import "./Ownable.sol";

contract Credit is Ownable {
    using safeMath for uint256;
    // state variables

    address borrower;
    uint256 requestedAmount;
    uint256 returnAmount;
    uint256 repaidAmount;
    uint256 interest;

    uint256 requestRepayments;
    uint256 remainingRepayments;
    uint256 repaymentInstallment;
    uint256 requestDate;
    uint256 lastRepaymentDate;

    // bytes type
    bytes description;
    bool active = true;

    // lenders count

    uint256 lendersCount = 0;
    // revoke count

    uint256 revokeVotes = 0;

    // revoketimeneeded

    uint256 revokeTimeNeeded = block.timestamp + 1 seconds;

    // Fraud votes

    uint256 fraudVotes = 0;

    // Lenders
    mapping(address => bool) lenders;

    // lendersInvestedAmount

    mapping(address => uint256) lendersInvestedAmount;

    // fraudVoters
    mapping(address => bool) fraudVoters;

    // Enums

    // state enuma

    enum State {
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

    event LogCreditInitialized(
        address indexed _address,
        uint256 indexed timestamp
    );

    // logscreditStatechanged
    event LogCreditStateChanged(State indexed state, uint256 indexed timestamp);

    // logscreditStateActivechanged
    event LogCreditStateActiveChanged(
        State indexed active,
        uint256 indexed timestamp
    );

    // logsBorrowerWithdrawal
    event LogBorrowerWithdrawal(
        address indexed _address,
        uint256 indexed _amount,
        uint256 indexed timestamp
    );

    // logsBorrowerRepaymentInstallment
    event LogBorrowerInstallment(
        address indexed _address,
        uint256 indexed timestamp
    );

    // logsBorrowerRepaymentFinished
    event LogBorrowerFinished(
        address indexed _address,
        uint256 indexed timestamp
    );

    // logsBorrowerChangeReturned
    event LogBorrowerChangeReturned(
        address indexed _address,
        uint256 _amount,
        uint256 indexed timestamp
    );

    // logsLenderInvestment
    event LogLenderInvestment(
        address indexed _address,
        uint256 _amount,
        uint256 indexed timestamp
    );

    // logsLenderWithdrawal
    event LogLenderWithdrawal(
        address indexed _address,
        uint256 _amount,
        uint256 indexed timestamp
    );

    // logsLenderChangeReturned
    event LogLenderChangeReturned(
        address indexed _address,
        uint256 _amount,
        uint256 indexed timestamp
    );

    // logsLenderVoteForRevoking
    event LogLenderVoteForRevoking(
        address indexed _address,
        uint256 indexed timestamp
    );

    // logsLenderVoteForFraud
    event LogLenderVoteForFraud(
        address indexed _address,
        uint256 indexed timestamp
    );

    // logsLenderRefunded
    event LogLenderRefunded(
        address indexed _address,
        uint256 _amount,
        uint256 indexed timestamp
    );

    // -----------------------Modifiers-------------------------------//

    // isActive

    modifier isActive() {
        require(active == true);
        _;
    }

    // OnlyBorrower
    modifier OnlyBorrower() {
        require(msg.sender == borrower);
        _;
    }

    // OnlyLender
    modifier OnlyLender() {
        require(lenders[msg.sender]);
        _;
    }

    // canAskForInterest
    modifier canAskforInterest() {
        require(state == State.interestReturns);
        require(lendersInvestedAmount[msg.sender] > 0);
        _;
    }

    // canInvest
    modifier canInvest() {
        require(state == State.investment);
        _;
    }

    // canRepay
    modifier canRepay() {
        require(state == State.repayment);
        _;
    }

    // canWithdraw
    modifier canWithdraw() {
        require(address(this).balance >= requestedAmount);
        _;
    }

    // IsNotFraud
    modifier isNotFraud() {
        require(state != State.fraud);
        _;
    }

    // IsRevokable
    modifier IsRevokable() {
        require(block.timestamp >= revokeTimeNeeded);
        require(state == State.investment);
        _;
    }

    // IsRevokable
    modifier IsRevoked() {
        require(state == State.revoked);
        _;
    }

    // --------------------Functions---------------------//

    constructor(
        uint256 _requestedAmount,
        uint256 _requestedRepayments,
        uint256 _interest,
        bytes memory _description
    ) {
        borrower = tx.origin;
        interest = _interest;
        requestedAmount = _requestedAmount;
        requestRepayments = _requestedRepayments;
        requestRepayments = _requestedRepayments;

        // ---------using safe math library for calculation

        returnAmount = requestedAmount.add(interest);
        repaymentInstallment = returnAmount.div(requestRepayments);
        description = _description;
        requestDate = block.timestamp;
        // emitting event
        emit LogCreditInitialized(borrower, block.timestamp);
    }

    // get balance

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    // change state

    function changeState(State _state) external onlyOwner {
        state = _state;

        // log statechaneg
        emit LogCreditStateChanged(state, block.timestamp);
    }

    // toggleActive

    function toggleActive() external onlyOwner returns (bool) {
        active =  !active;
        // logActive change
        emit LogCreditStateActiveChanged(active, block.timestamp);
        return active;
    }

    // Invest

    function  invest()public canInvest payable  {
        uint extraMoney =0;
        if (address(this).balance >=requestedAmount) {
           extraMoney = address(this).balance.sub(requestedAmount);
        }

   assert( extraMoney<= msg.value);



if (extraMoney >0) {
    // return extra money to sender
    payable(msg.sender).transfer(extraMoney);
    emit LogLenderChangeReturned(msg.sender, extraMoney, block.timestamp);
}


state = State.repayment;
emit LogCreditStateChanged(state, block.timestamp);
   
   
   
   lenders[msg.sender]=true;
   lendersCount++;

// add the amount invested to the amount mapping

 lendersInvestedAmount[msg.sender]=lendersInvestedAmount[msg.sender].add(msg.value.sub(extraMoney));

    }






}
