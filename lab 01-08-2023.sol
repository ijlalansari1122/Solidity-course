// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract PizzaDeli {
    enum   PizzaOrder{Pending ,Preparing ,Delivering , Received }

PizzaOrder public p1;
PizzaOrder public  p2 = PizzaOrder.Preparing;
PizzaOrder public p3 = PizzaOrder.Received;


enum  Exam {Pass , fail , scholarship, checking }

// Exam public e3 = Exam(3);




// setting and getting Enums


// Exam public e4;
// function set(Exam _e)public  {
//     e4 = _e;
// }

// function get() public view returns (Exam) {
//     return e4;
// }

// deleting enum

// function udelete() public  {
//     delete e4;
// }


// PizzaOrder public  p1;

function  setter(PizzaOrder _p1) public  {
    p1 = _p1;
}


// getter

function singlegetter() public view returns (PizzaOrder,PizzaOrder,PizzaOrder) {
    return (p1 ,p2 ,p3);
}

// modifying Enums

Exam public e1;
function pass() public  {
    if (e1 == Exam.checking) {
        e1=Exam.Pass;
    }
}






}
