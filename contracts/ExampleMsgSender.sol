//SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ExampleMsgSender {

    address public myAddress;

    function setMyAddress() public {
        myAddress = msg.sender; // msg.sender address is the user's account address who is interacting with the contract.
    }
}