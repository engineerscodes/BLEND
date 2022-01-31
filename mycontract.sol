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

contract mybool{

   bool public myvar;
   int8 public newInts;
   uint8  public neg;
   function setbool() public{
       myvar=true;
   }
   
   function setInt(int8 newI ) public{
        newInts=newI;
   }
   function setNeg(uint8 newNeg) public{
       neg=newNeg;
   }
}

contract testAddress{

    address public myaddress;

    function setAddress(address val) public{
        myaddress=val;
    }


}

contract TestsendAddress{
    address public adds;
    function setAddress() public{
        adds=msg.sender;
    }
}

contract TestString{

    string public name;

    function setName(string memory val) public {
        name=val;
    }
}
