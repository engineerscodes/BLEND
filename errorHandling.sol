pragma solidity^0.8.7;

contract errorsample{

    uint64 public totalBal;
    uint64 public temp;
   // function receiveMoney() public payable{
       // assert(totalBal+uint64(msg.value)>=totalBal);
     //     totalBal+=uint64(msg.value);
   // }

       function receiveMoney() public payable{
        unchecked  {totalBal+=uint64( msg.value);}
        //unchecked allow you to fold when max 
    }
     
     function fixedMoney()public payable{
         unchecked {
             temp=totalBal+uint64(msg.value);
         }
         assert(temp>=totalBal);
         totalBal+=uint64( msg.value);
     }


}

