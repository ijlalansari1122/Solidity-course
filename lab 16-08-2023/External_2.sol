// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.17;


contract Apartment {

uint internal tenenantcount ;
function  joinApartment(uint tenant) pub   {
  tenant+=tenenantcount;


}
}


contract  Tenant is Apartment  {
    
function  getjoin(uint  tenant) external  {
        joinApartment(tenant);

}

function getter() external view returns (uint) {
    return tenenantcount;
}

}






