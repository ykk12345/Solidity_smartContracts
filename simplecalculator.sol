//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract calculator{
    uint256 public result;

    function add(uint x, uint y) public returns (uint)
    {
        result = x+y;
        return result;
    }

    
    function sub(uint x, uint y) public returns (uint)
    {
        result = x-y;
        return result;
    }

    
    function multiply(uint x, uint y) public returns (uint)
    {
        result = x*y;
        return result;
    }
}
