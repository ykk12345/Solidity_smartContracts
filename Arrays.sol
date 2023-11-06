//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract Arrays {
    // several ways to initializa an array

    // dynamic arrays

    uint[] public arr;
    uint[] public arr2=[1,2,3,4,5];

    // creating the fixed size arrays

    uint[10] public arr3;
    
    //function to add value in the array

    function addvalue(uint data) public {
        arr.push(data);
    }
    
    // function to get the length of the array

    function getlength() public view returns(uint) {
        return arr.length;
    }

    // fumction to get data at a particulat index of the array

    function getdata(uint index) public view returns(uint)
    {
        return arr[index];
    }
}
