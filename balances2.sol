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


contract SendMoney{
    uint public totalBal;
    
    function receiveMoney() public payable{
         totalBal+=msg.value;
    }

   function checkBal() public view returns(uint){
       return address(this).balance;
   }

   function SendMoneys(address payable toaddress,uint Amount) public{
       toaddress.transfer(Amount);
   }

}
