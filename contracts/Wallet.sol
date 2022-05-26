//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Wallet {
    address private owner;
    address private subscriber;


    constructor() public {
        owner = msg.sender;
    }
}
