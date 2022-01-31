//pragma
pragma solidity^0.8.7;
//or
// pragma solidity>=0.8.7; 
// pragma solidity >=0.8.7 <0.8.9;

//importing source file any other file


//contract

contract mycontract{
       
       uint myVar;

       function setVar(uint newVar) public{
           myVar=newVar;
       }

       function getVar() public view returns(uint){
           return myVar;
       }



}
