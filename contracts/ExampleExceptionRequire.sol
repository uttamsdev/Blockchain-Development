//SPDX-License-Identifier: MIT

pragma solidity 0.7.0;

contract ExampleExceptionRequire {
    mapping(address => uint) balanceReceived;

    function receiveMoney() public payable {
        balanceReceived[msg.sender] += msg.value;

    }

    function withdrawMoney(address payable _to, uint _amount) public {
        // if(amout <= balanceReceived[msg.sender]){
        //     balanceReceived[msg.sender] -= _amount;
        //     _to.transfer(_amount)
        // }
        require(amout <= balanceReceived[msg.sender], "Not enough funds")
        balanceReceived[msg.sender] -= _amount;
        _to.transfer(_amount)
        
    }
}