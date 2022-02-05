pragma solidity^0.8.7;


contract BalanceTransfer{
    uint public totalBal;
    
    function receiveMoney() public payable{
         totalBal+=msg.value;
    }

    function checkBalance() public view returns(uint){
        return address(this).balance;
        
    }

}
