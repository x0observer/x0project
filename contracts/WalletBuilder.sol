//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WalletBuilder {
    string private _id;

    constructor(string memory _id) {
        console.log("Deploying a @WalletBuilder:", _id);
    }
}
