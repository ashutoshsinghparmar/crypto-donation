// SPDX-License-Identifier: MIT

pragma solidity >=0.4.21 <0.7.0;
import "./Cause.sol";

/// @title Mock Cause extending Cause contract which provides some helpers for testing
/// @author Ashutosh Singh Parmar
/// @dev Wont be deployed in network, its for local testing purposes
contract MockCause is Cause {
    
    //Design: Made use of inheritence
    constructor (string memory title, string memory detail, uint targetAmount, uint startTime, uint endTime) 
    Cause(title, detail, targetAmount, startTime, endTime)
    public
    {

    }

    /// @notice Reduces the Start Time and End Time by a specified amount
    /// @dev Use this method while testing time dependent logic
    /// @param sec time in seconds
    function shiftTime(uint sec) public {
        StartTime -= sec;
        EndTime -= sec;
    }
}