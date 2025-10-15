// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {Greeting} from "../src/Greeting.sol";

contract DeployGreeting is Script {
    function run() external {
        string memory mnemonic = vm.envString("PRIVATE_KEY");
        uint256 deployerPrivateKey = vm.deriveKey(mnemonic, 0);

        vm.startBroadcast(deployerPrivateKey);

        Greeting greeting = new Greeting("Hello, Blockchain!");

        vm.stopBroadcast();
    }
}
