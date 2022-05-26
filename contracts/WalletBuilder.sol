//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;
import "./Wallet.sol";
import "hardhat/console.sol";
import "@openzeppelin/contracts/access/Ownable.sol";


contract WalletBuilder is Ownable {
    

    constructor() public {
        owner = msg.sender;
    }

    address private owner;
    address[] private walletsAddress;
    


    function createWallet() public onlyOwner returns (address wallet){
        /*
        Deployed container for wallet by root 
        */

        Wallet newWallet = new Wallet();
        walletsAddress.push(address(newWallet));
        return address(newWallet);
    }

    function withdrawAll(address[] memory addresses) public onlyOwner{
        require(owner == msg.sender, "Permission denied");
    }



}
