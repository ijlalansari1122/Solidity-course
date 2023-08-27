// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract VotingDataArraySerializer {
    struct VoterData {
        address voterAddress;
        uint voterID;
        string name;
        uint[3] dateOfBirth;
    }

    function serializeVoterDataArray(VoterData[] memory voters) public pure returns (bytes memory) {
        return abi.encode(voters);
    }


function  decode(bytes memory data) public pure returns (VoterData[] memory voters)  {
 
 voters = abi.decode(data, (VoterData[]));
 
    return  voters;
}

}


