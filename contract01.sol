pragma solidity ^0.4.0;

contract Protected_Contract {
    
    string word = 'Hello World';
    address contract_owner;
    
    function HelloWorld()
    {
        contract_owner = msg.sender;
    }
    
    function GetWord() constant returns(string)
    {
        return word;
    }
    
    function SetWord(string newvalue) returns(string)
    {
        if (contract_owner != msg.sender)
        {
            return 'You cant execute this function since you are not the owner';
        }
        else
        {
            word = newvalue;
            return 'You are able to execute this function since you are the owner.';
        }
    }

}
