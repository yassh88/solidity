pragma solidity >0.4.0 <=0.7.0;

contract Demo{
    
    function getValues() public view returns(bool, uint, string memory){
        return (true , 1, "yes its working");
    }
    
}