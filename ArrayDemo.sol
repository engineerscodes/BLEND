pragma solidity^0.8.7;

contract ArrayDemo{
   uint[5] public fixedArray;
   uint [] public dyArray;
   function setArray(uint index,uint val) public{
       if(index<fixedArray.length){
           fixedArray[index]=val;
       }
   } 

   function setDyArray(uint val) public{
       dyArray.push(val);
   }
   function remove() public{
       dyArray.pop();
   }
}
