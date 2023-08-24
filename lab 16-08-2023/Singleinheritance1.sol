// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.17;

contract Base {
 uint public x;
 function setX(uint _x) private  {
 x = _x; }
}
contract Derived is Base {
 function getX() public view returns (uint) {
 return x; }
}



contract Parent {
    uint public parentValue;

    function set(uint p) public {
        parentValue=p;
    }
}

contract Child is Parent {
    uint public childValue;

    function set2(uint c) public {
        childValue=c;
    }
    

function  get()public  view returns (uint , uint) {
    return (parentValue , childValue );
}


}

