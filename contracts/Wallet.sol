pragma solidity ^0.8.0;


contract Wallet{
    address private owner;
    address private subscriber;

    event Paid(uint _balance, address _subscriber);

    constructor(address owner) {
        owner = owner;
    }
    
    
    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

    
    function withdrawAll() public {
        address payable _to = payable(owner);
        address _thisContract = address(this);
        _to.transfer(_thisContract.balance);
    }

    
    receive() external payable {
        subscriber = msg.sender;
        emit Paid(msg.value, subscriber);
    }

    
    }


