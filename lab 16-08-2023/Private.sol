// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Private {
    string public  privatemsg = "Private Variable is Called";

    function getprivate() private view returns (string memory) {
        return privatemsg;
    }

    function getprivatevar() public view returns (string memory) {
        return privatemsg;
    }

    function getprivatefunc() public view returns (string memory) {
        //You are calling 'getprivate()' function here
        //It returns a string value which is then returned by the
        //'getprivatefunc()' function
        return getprivate();
    }
}

// child contract

contract private2 is Private {
    function private_msg() public {
        privatemsg = "the code is edited";
    }
}
