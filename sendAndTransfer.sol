pragma solidity >=0.4.22 <0.7.0;
pragma experimental ABIEncoderV2;
/**
 * @title Storage
 * @dev Store & retreive value in a variable
 */
contract Demo {
    
    
     function transferEtherToAddress(address payable recipient) external payable {
        return recipient.transfer(1 ether);
    }
    
    function sendEtherToAddress(address payable recipient) external payable returns(bool) {
        return recipient.send(1 ether);
    }
    
}