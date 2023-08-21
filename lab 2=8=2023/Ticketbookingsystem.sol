// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Added {
 enum  TicketType {Economy, Business ,FirstClass }   

 enum  Days {monday, tuesday ,wednesday,thursday,friday,saturday,sunday }   




struct Ticket{
    string passenger ;
    TicketType tickettype;
    Days day;
    bool isBooked;
    }


Ticket[] public tickets;

function bookTicket(string memory _passenger , Days _day ,TicketType _ticket ) public  {
    
tickets.push(Ticket(_passenger , _day,_ticket));

}

function getTicketType(uint256 _index) public  view returns (TicketType) {
    

}

function getTicketDay(uint256 _index) public  view returns (Days) {
    
    
}
function toggleStatus(uint256 _index) public  {
    
    
}




}