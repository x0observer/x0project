pragma solidity ^0.8.0;
import "./Wallet.sol";


contract WalletBuilder{

    
    address owner;
    mapping (address => uint) public wallets;
    
    event CreateWallet(address _newWalletAddress, uint _createdTimestamp);

    constructor() {
        owner = msg.sender;
    }


    function createWallet() public returns(address){
        require(owner == msg.sender, "Permission denied");
        Wallet newWallet = new Wallet(msg.sender);
        address newWalletAddress = address(newWallet);
        uint createdTimestamp = block.timestamp;
        wallets[newWalletAddress] = createdTimestamp;
        emit CreateWallet(newWalletAddress, createdTimestamp);
        return newWalletAddress;
    }

    function getOwner() public view returns(address){
        return owner;
    }

}

    



