// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Error{

    uint a;
    uint b;

    function testRequire(uint _a,uint _b) public {
        require(_a>2 && _b>5,"Not satisfy the required condition");
        a = _a;
        b = _b;
    
    }
    function add() public view  returns(uint){
        return a + b;
    }

    function testAssert(uint c) public view {
        assert(a+b == c);
    }

    function testRevert(uint d) public pure{
        if (d > 2){
            revert("Number must be less than or equal to 2");
        }
    }
    

}
