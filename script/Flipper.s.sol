// // SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script, console} from "forge-std/Script.sol";
import {Flipper} from "src/Counter.sol";

contract FlipperScript is Script {
    Flipper flipper;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        flipper = new Flipper();

        console.log("log 1",flipper.getValue());

        flipper.flip();

        console.log("log 2",flipper.getValue());

        vm.stopBroadcast();
    }
}
