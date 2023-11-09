//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract FunctionModifier{

    address public owner;
    uint256 public x=10;
    bool public locked;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(owner == msg.sender,"Not owner");
        _;  // continue the function if the requiew condition is true
    }

    modifier ValidateData(address _addr){
        require(_addr!= address(0),"Not the correct address");
        _;
    }

    function changeOwner(address _newOwner) public onlyOwner ValidateData(_newOwner) {
        owner = _newOwner;

    }


}
