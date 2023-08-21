// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract enumedstruct {
    enum TicketType {
        Economy,
        Business,
        FirstClass
    }
    enum Days {
        Monday,
        Tuesday,
        wednesday,
        thursday,
        Friday,
        saturday,
        Sunday
    }

    struct Ticket {
        string passengers;
        TicketType ticketType;
        Days day;
        bool isBooked;
    }

    Ticket[] public tickets;

    function BookTicket(
        string memory _passenger,
        Days _day,
        TicketType _ticketType
    ) public {
        tickets.push(
            Ticket({
                passengers: _passenger,
                ticketType: _ticketType,
                day: _day,
                isBooked: false
            })
        );
    }

    function getTicketType(uint256 _index) public view returns (TicketType) {
        Ticket memory ticket = tickets[_index];
        return ticket.ticketType;
    }

        function getTicketDay(uint256 _index) public view returns (Days) {
        Ticket memory ticket = tickets[_index];
        return ticket.day;
        }

        function toggleStatus(uint256 _index) public  {
        Ticket storage ticket =tickets[_index];
         ticket.isBooked = !ticket.isBooked;


        }
}
