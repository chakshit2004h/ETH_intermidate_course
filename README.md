## Error Handling

The solidity program "Error Handling" is a program in which I have discussed the working of various error handling techniques like Require, Assert, Revert.

## Description

This Solidity smart contract named "Error" showcases various error handling mechanisms within Ethereum's blockchain environment. The contract defines two state variables, `a` and `b`, both of type `uint`. The function `testRequire` takes two parameters `_a` and `_b`, and it utilizes the `require` statement to enforce specific conditions (`_a > 2` and `_b > 5`) before allowing the function to proceed, reverting with a custom error message if the conditions are not met. Upon successful validation, `_a` and `_b` are assigned to `a` and `b`, respectively. The `add` function, marked as view, returns the sum of `a` and `b`. Another function, `testAssert`, uses the `assert` statement to validate whether the sum of `a` and `b` equals a provided value `c`. Lastly, the `testRevert` function, marked as pure, checks if a provided value `d` is greater than 2; if so, it reverts execution with a custom error message indicating that the number must be less than or equal to 2. This contract serves as an educational tool to understand and experiment with error handling in Solidity.
## Getting Started

### Installing

To download the code, you can visit the following file path:- https://github.com/chakshit2004h/ETH_intermidate_course/blob/main/Error_Handling.sol

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the following code into the file:
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
    }}


To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.25" (or another compatible version), and then click on the "Compile errorHandling.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "Error" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you will set the value and see the working of require(), assert(), revert().


## Authors


Metacrafter Chris
@metacraftersio


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
