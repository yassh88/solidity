pragma solidity >=0.4.22 <0.7.0;

contract MyEnum{
    
    enum myEnum {created, updated, deleted}
    
    function getMyEnum() public view returns(myEnum){
        return myEnum.updated;
    }
}