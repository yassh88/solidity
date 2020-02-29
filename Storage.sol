pragma solidity >=0.4.22 <0.7.0;
pragma experimental ABIEncoderV2;
/**
 * @title Storage
 * @dev Store & retreive value in a variable
 */
contract Demo {

  struct User{
      string name;
  }
  User[] userArray;
  constructor() public{
      User memory user = User("test");
      userArray.push(user);
  }
  function foo() external{
      User storage user = userArray[0];
      user.name="yashw";
  }
  function getFoo()external view returns(User[] memory){
      return userArray;
  }
  function foo2(uint[] calldata ary) external{
        
  }
}