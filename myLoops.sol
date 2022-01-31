pragma solidity ^0.8.7;

contract  Loops{

    uint public i;

   function looper() public{
    while(i<10){
         i++;
    }
    
    do{
     i++;
    }while(i<20);
    
    for(;i>5;i--){
        
    }

   }
}
