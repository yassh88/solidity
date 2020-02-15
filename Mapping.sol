pragma solidity >0.4.0 <=0.7.0;

contract Demo{
    
    mapping(address => uint) myMapping;
    
    mapping(address =>  mapping(address => bool)) nestedMapping;
    
    function addMapping() public {
        myMapping[msg.sender] =100;
    }
    
    function getMapping() public view returns(uint){
        return myMapping[msg.sender];
    }
    
    function deleteMapping() public {
        delete myMapping[msg.sender];
    }
    
    
    function addNestedMapping(address newAddress) public {
        nestedMapping[msg.sender][newAddress] =true;
    }
    
    function getNestedMapping(address newAddress) public view returns(bool){
        return nestedMapping[msg.sender][newAddress];
    }
    
    function deleteNestedMapping(address newAddress) public {
        delete myMapping[msg.sender];
    }
    
    //"0xca35b7d915458ef540ade6068dfe2f44e8fa733c"
    //"0xca35b7d915458ef540ade6068dfe2f44e8fa733c"
    
}