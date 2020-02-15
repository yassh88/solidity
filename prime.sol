pragma solidity >0.4.0 <=0.7.0;

contract Demo{
    uint public a=10;
    function setValue(uint v)public {
        a = v;
    }
    function isPrime()public view returns(bool){
        bool prime = false;
        for(uint i = 2; i<=(a/2); i++){
            if(a % i == 0){
                prime = true;
            }
        }
        return !prime;
    }
}