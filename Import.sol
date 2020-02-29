pragma solidity >=0.4.22 <0.7.0;
pragma experimental ABIEncoderV2;
import './ContractB.sol';
/**
 * @title Storage
 * @dev Store & retreive value in a variable
 */
contract contractA {
    
    address addressB;
    
    string str;
    
    function setAddressOfB(address _addressB)external {
        addressB = _addressB;
    }
    
    function callHelloOfB()external view returns(string memory){
        contractB bObj = contractB(addressB);
        return  bObj.hello();
    }
    
    function getResult()external view returns(string memory){
        return str;
    }
    
    
}
