pragma solidity >0.4.0 <=0.7.0;

contract Demo{
    
    uint value;
    
    event valueSaved(uint data);
    
    
    function setValue(uint a)public {
        value = a;
        emit valueSaved(value);
    }
}