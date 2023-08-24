// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.17;


contract  VotingSystem {
    
mapping (uint256 =>bool) public voted;
function vote(uint256 _candidateId) public  {
    
    
    if (voted[_candidateId] == true) {
        revert("voter already voted");
    }

voted[_candidateId]=true;

}



}