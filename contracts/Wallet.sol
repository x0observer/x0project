//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Wallet {
    string private _id;

    constructor(string memory _id) {
        console.log("Deploying a @Wallet:", _id);
    }
}
