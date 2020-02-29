pragma solidity >=0.4.22 <0.7.0;
pragma experimental ABIEncoderV2;
/**
 * @title Storage
 * @dev Store & retreive value in a variable
 */
contract Demo {
    
    mapping(address => uint) investerBalance;
    
    function invest() external payable{
        if(msg.value < 600){
            revert();
        } 
        investerBalance[msg.sender] = msg.value;
    } 
    
    function getCotractBalance() external view returns(uint){
        return address(this).balance;
    }
    
    function getSenderInvestment() external view returns(uint){
        return investerBalance[msg.sender];
    }
    
}