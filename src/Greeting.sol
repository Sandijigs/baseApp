// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Greeting {
    string public greeting;

    constructor(string memory _initialGreeting) {
        greeting = _initialGreeting;
    }

    function setGreeting(string memory _newGreeting) public {
        greeting = _newGreeting;
    }

    function greet() external view returns (string memory) {
        return greeting;
    }
}
