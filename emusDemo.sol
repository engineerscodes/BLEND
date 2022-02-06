pragma solidity ^0.8.7;

contract tesNum{

   enum myNumber{One,Two,Three}
   myNumber public allotNumber;

   function setNumber(uint val)public{
     
      if(val == 0)
       allotNumber=myNumber.One;
     else if(val ==1)
      allotNumber=myNumber.Two;
     else if(val == 2)
     allotNumber=myNumber.Three;



   }

}
