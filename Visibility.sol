//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract Basiccalculator{
  uint256 public result;

  function add(uint256 a,uint256 b) internal
  {
    result=a+b;
  }

  function sub(uint256 a, uint256 b) internal{
    result=a-b;
  }
}

contract AdvanceCalculator is Basiccalculator{  // inheriting the basic calculator to the advance calculator
    
    function multiply(uint256 a, uint256 b) internal
    {
    result = a*b;
    }

    function divide(uint256 a, uint256 b) internal
    {
      result = a/b;
    }

    function performOperation(uint256 a, uint256 b, uint256 operation) public {
      if(operation == 0) add(a,b);
      else if(operation==1) sub(a,b);
      else if(operation == 2) multiply(a,b);
      else if(operation==3) divide(a,b);
      else revert("Invalid Operation");
      
    }


}
