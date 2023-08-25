// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17  ;

contract  Marketplace {
    

mapping(address => uint) public  Address;

event Purchase(address buyeraddress , address senderaddress , uint valueofpurchase );


function  register(address newparticipant ,uint balance) public    {

if ( balance ==0) {
    revert("Error no any balance");
}

Address[newparticipant] = balance;

}
// buy function

function Buy(address buyer , address seller  , uint cash ) public virtual     {
require(buyer != address(0)   || seller !=address(0) , "error no user or buyer ");    
require(cash != 0 , "No cash inputted ");    

Address[buyer] -= cash;
Address[seller] += cash;
require(buyer != seller , "Buyer and seller are same");

emit Purchase(buyer, seller , cash);


}


// sell function

function  sell(address buyer , address seller  , uint price)public virtual  returns (string memory )  {
    
require(buyer != address(0)   || seller !=address(0) , "error no user or buyer ");    
require(price != 0 , "No cash inputted ");    
require(Address[buyer] >= price , "you can buy things");
Address[buyer] -= price;
Address[seller] += price;


emit Purchase(buyer, seller , price);



return "item will be shipped to location";



}


}



// premiumseller Contract

contract Premiumseller is Marketplace   {
    

uint public Fee;

constructor( uint _fee) {
    Fee =_fee;
}

function  sell(address buyer , address seller  , uint price)public override   returns (string memory )  {

// Address[seller] = price;
uint Feeamount =price*Fee/100;


require(Address[seller] != 0 , "seller balance is equal to zero");

return super.sell(buyer, seller, price-Feeamount);

 

}






}


// Regular buyer contract

contract  Regularbuyer is Marketplace {





}



// Vip buyer contract


contract  VipBuyer is Marketplace {
    
uint public discount;
constructor(uint _discount) {
    discount =_discount;
}




// buy function

function Buy(address buyer , address seller  , uint cash ) public override     {
require(Address[buyer] >= cash ||Address[seller] >= cash , "you are not registered");
uint discountAmount = cash * discount / 100;
uint finalAmount = cash - discountAmount;


emit Purchase(buyer, seller, finalAmount);

}









}




