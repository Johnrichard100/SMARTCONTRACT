/**********************************************************************
*These solidity codes have been obtained from Etherscan for extracting
*the smartcontract related info.
*The data will be used by MATRIX AI team as the reference basis for
*MATRIX model analysis,extraction of contract semantics,
*as well as AI based data analysis, etc.
**********************************************************************/
pragma solidity ^0.4.24;

contract Outer {
    Inner1 public myInner1 = new Inner1();
    
    function callSomeFunctionViaOuter() public {
        myInner1.callSomeFunctionViaInner1();
    }
}

contract Inner1 {
    Inner2 public myInner2 = new Inner2();
    
    function callSomeFunctionViaInner1() public {
        myInner2.doSomething();
    }
}

contract Inner2 {
    uint256 someValue;
    event SetValue(uint256 val);
    
    function doSomething() public {
        someValue = block.timestamp;
        emit SetValue(someValue);
    }
}