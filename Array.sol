pragma solidity >0.4.0 <=0.7.0;

contract Demo{
    uint[] myArray;
    
    
    
    function addArray(uint v)public payable returns(uint[] memory) {
       myArray.push(v);
    }
    
    function getMyArray()public view returns(uint[] memory){
        return myArray;
    }
    
    function memoryArray()public view returns(uint[] memory){
        uint[] memory memoryArray = new uint[](10);
        // memoryArray.push()not worked for fixed size addArray;
        memoryArray[0] = 1;
        memoryArray[1] = 2;
        delete  memoryArray[1];
        return memoryArray;
    }
    
    
}