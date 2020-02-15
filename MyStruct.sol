pragma solidity >=0.4.22 <0.7.0;
pragma experimental ABIEncoderV2;

contract MyStruct{
    
    struct myStruct {
        uint key;
        string value;
    }
    
    myStruct structObj = myStruct(10, "ten");
    
    function getMyStruct() public view returns(myStruct memory){
        return structObj;
    }
}