pragma solidity ^0.8.0;

import "./EIP712MetaTransaction.sol";

contract SaveUser is EIP712MetaTransaction("SaveUser","1"){
 
 address[] userAddress;
    
    
    function saveAddress() external {
        
        userAddress.push(msgSender());
    }
    
    
    
    function showAddress() public view returns(address[] memory) {
        return userAddress;
    }
}