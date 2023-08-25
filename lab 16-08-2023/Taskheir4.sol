// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.17;



contract  WorkerRole {
    address public worker;
    uint256 public totalWorkSubmitted;

function workerd(address _worker )public  {
    worker = _worker;
}


function  submitwork(uint256 workamount)public  {
    
totalWorkSubmitted +=workamount;


}


function getWotrkersdata() public view returns (address , uint256) {
    
    return (worker , totalWorkSubmitted);
}





}



contract  ClientRole {
    
address public Client;

uint256 public  totalprojectscreated;


function clientd(address _client ) public  {
    Client = _client;
}


function  Projectcreated(uint256 projects)public  {
    
totalprojectscreated +=projects;


}


function getWorkersdata() public view returns (address , uint256) {
    
    return (Client , totalprojectscreated);
}






}




contract  Freelancer is ClientRole ,WorkerRole  {
    






}

