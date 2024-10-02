// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Student{

    //array
    uint[] public number = [1,2,3,4];
    string[] public fruits = ["mango", "orange","lemon"];

    uint public noofruits;

    

    function addFruits(string memory _fruit) public {
        fruits.push(_fruit);
        noofruits++; 
    }

    function removeFruits() public {
        fruits.pop();
    }

    function getLength() public view returns (uint){
        return fruits.length;
    }
    
   }

  

contract Struct {
    struct StudentDetail {
        string name;
        address id;
        uint dob;
    }

    // Function to create and return a student struct
    function studentDetail(string memory _name, address _id, uint _dob) public pure returns (StudentDetail memory) {
        StudentDetail memory newStudent = StudentDetail({
            name: _name,
            id: _id,
            dob: _dob
        });

        return newStudent;
    }
}


contract Mapping{
    uint simze;
    address owner;
    mapping (address => uint) getValue;

    constructor(){
        msg.sender == owner;
    }

    function setValue(uint _size, address _addr) public onlyOwner{
      getValue[_addr] =_size;
    }

    modifier onlyOwner(){
        require(msg.sender == owner, "You're a thief");
        _;
    }

    }


   