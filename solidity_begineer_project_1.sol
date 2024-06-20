// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract myToken{

    //public tokens

    string public tokenName = 'metacrafters';
    string public tokenAbbr = 'meta';    
    uint public totalSupply = 0;

    //mapping
    
    mapping (address => uint) public balances;



    //mint function
    function mint (address _address, uint _values) public {
        totalSupply += _values;
        balances[_address] = _values;
    }


    //burn function
    function burn(address _address, uint _values) public{
        if(balances[_address] >= _values){
            totalSupply -= _values;
            balances[_address] -= _values;
        }
    }
}