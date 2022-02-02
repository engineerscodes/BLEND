pragma solidity^0.8.7;


contract testDecision{

     bool public res;
     int myVal;

     function seTVal(int v) public{

          if(myVal>v)
         {   
             res=true;
             myVal=v;      
        }else
           {  res=false;
           }

     }

      function getVar() public view returns(int){
           return myVal;
       }


}
