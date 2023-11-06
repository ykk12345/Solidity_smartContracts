//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract Mymapping{
    //mapping from address to uint
    mapping(address => uint) public mymap;

    function get(address _adr) public view returns (uint){ // mapping always returns a value 
    // if the value is not set it will return the default value
    return mymap[_adr];
    }

    function set(address _adr , uint _i) public{
        // updating the value at this address
        mymap[_adr]=_i;
    }

    function remove(address _adr) public{
        //Resetting the value to the default value 
        delete mymap[_adr];
    }
}
