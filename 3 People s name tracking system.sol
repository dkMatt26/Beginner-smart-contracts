pragma solidity 0.5.1;
//addPerson creates a profile. E.g.: John (first name), Smith (last name).
//Remember the comma between first and last name.
//uint256 peopleCount keeps track of how many people are registered, assigning
//a number to them starting from 1.
//people.push (visualised as people on the deployed contract) recalls the registered Person
//through his corresponding number. E.g: if John Smith is 0 and Mark Bell is 1,
//when you type in the people button 0, and press it, it will tell you that that number 
//equals to John Smith. If you type 1 and press the button, it will tell you that 1
//corresponds to Mark Bell. Of course, those people with their name and surnames have to
//be registered through the addPerson function first! Please note that this contract
//starts counting from 0. To understand it better, check below the peopleCount button: for the 
//first person registered, you see 0: uint256: 1. It means that number 0 corresponds
//to the first person registered in the smart contract. 

contract myContract {
    Person [] public people;

    uint256 public peopleCount;

    struct Person {
        string _firstName;
        string _lastName;
    }

    function addPerson(string memory _firstName, string memory _lastName) public {
        people.push(Person(_firstName, _lastName));
        peopleCount += 1;
    }
}
