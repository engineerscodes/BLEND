pragma solidity^0.8.7;

contract BalanceTransfer{
    
     address private owner;
     mapping(address=>uint) public totalBal;
       
    constructor() public{
        owner=msg.sender;
    }
    
     function getMoney() public payable{
         require(msg.sender==owner,"Your Not the Owner"); //if sender!=owner then in will be printed
         totalBal[msg.sender]+=msg.value;              // if both sender==owner than it will proceed further
     }

     function getBalance() public view returns(uint){
          return address(this).balance;
     }


     function SendMoney(address payable toaddress,uint Amount) public{
         require(msg.sender==owner,"Your Not the Owner") ;
         require(totalBal[msg.sender]>=Amount,"Less Money");
         toaddress.transfer(Amount);
         totalBal[msg.sender]-=Amount;
     }
     


}
