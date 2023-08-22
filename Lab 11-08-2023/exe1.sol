// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


struct specs{

    string microprocessor;
    uint Ram;
}


contract Events {
    

enum Quality {Good, Moderate , Bad }


event multi(string laptop , uint price);


event multiple(string laptop , uint indexed price , Quality indexed  q , specs indexed  s);

event mu(string , Quality);




event empty();



function emits() public  {
    emit multi("hp", 340000);
    emit multiple("lenovo", 234444, Quality.Good, specs("nividia" , 345)); 

    emit multi("hp", 340000);

emit mu("Dell", Quality.Moderate);
emit empty();
}










}