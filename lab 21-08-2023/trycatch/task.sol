// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract SimpleDivision {
    function Division(uint x, uint y) external pure returns (uint divide) {
        require(y != 0, "Denominator cannot be zero");
        divide = x / y;
    }
}

contract TryCatchExample {
    SimpleDivision public simpleDivision;

    constructor() {
        simpleDivision = new SimpleDivision();
    }

    function safeDivision(uint x, uint y) external view returns (uint result, bool success) {
        try simpleDivision.Division(x, y) returns (uint _result) {
            result = _result;
            success = true;
        } catch Error(string memory reason) {
            result = 0;  // Set the result to a default value
            success = false;
            // Handle the error reason here, e.g., division by zero
        } catch (bytes memory /*lowLevelData*/) {
            result = 0;  // Set the result to a default value
            success = false;
            // Handle low-level data in case of revert
        }
    }
}
