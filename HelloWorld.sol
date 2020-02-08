pragma solidity >=0.4.22 <0.7.0;


contract HelloWorld {
    string private message;
    
    constructor() public{
        message= "HelloWorld";
    }
    
    function getMessage() public view returns(string memory){
        return message;
    }
    
    function setMessage(string memory newMsg) public returns(bool success){
        require(bytes(newMsg).length > 0);
        message = newMsg;
        return true;
    }
}