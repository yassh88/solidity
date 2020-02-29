pragma solidity >=0.4.22 <0.7.0;
pragma experimental ABIEncoderV2;
/**
 * @title Storage
 * @dev Store & retreive value in a variable
 */
contract contractA {
    
    address addressB;
    
    function setAddressOfB(address _addressB)external {
        addressB = _addressB;
    }
    
    function callHelloOfB()external view returns(string memory){
        contractB bObj = contractB(addressB);
        return bObj.hello();
        
    }
    
    
}


contract contractB {
    
    function hello()external pure returns(string memory){
        return "Hello World";
    }
    
    
}