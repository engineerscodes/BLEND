pragma solidity^0.8.7;

contract test{

 uint public totalBal;
    
    function receiveMoney() public payable{
         totalBal+=msg.value;
    }

   function checkBal() public view returns(uint){
       return address(this).balance;
   }

  /* function SendMoneys(address payable toaddress,uint Amount) public{
       
       toaddress.transfer(Amount);
       totalBal-=Amount;
   }
   */
   function SendMoneys(address payable toaddress,uint Amount) public{
       require(Amount<=totalBal,"INSUFFICIENT BALANCE ");
       toaddress.transfer(Amount);
       totalBal-=Amount;
   }

}
