// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EtherWallet {
    address public owner;

    constructor(){
        owner = payable (msg.sender);
    }

    receive() external payable {}

    function getBalance() public view returns (uint){
        return address(this).balance;
    }

    function withdrawFunds(uint _amount) public  {
        require(msg.sender == owner, "Not the owner");
        payable(msg.sender).transfer(_amount);

    }


}