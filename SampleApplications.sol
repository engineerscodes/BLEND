pragma solidity^0.8.7;


contract BalanceTransfer{

  mapping(address=>uint) public totalBal;

  function getMoney() public payable{
      totalBal[msg.sender]+=msg.value;
  }

  function getBalance() public view returns(uint){
      return address(this).balance;
  }

  function transferBalance(address payable toaddress,uint Amount) public{
      toaddress.transfer(Amount);
      totalBal[msg.sender]-=Amount;
  }

}
