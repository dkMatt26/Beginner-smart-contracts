pragma solidity ^0.5.00;
// This contract allows to set a string (aka a name) of your choice
//through the "set" function. "SetSomething" is what I decided
//to show in the "set" empty box. Once something is set,
//press "value" to return and visualise it.
//Always remember to compile first, then deploy. Then, functions will be available.
contract SetReturn {
    string public value = "Dog";
    
    function set(string memory SetSomething) public {
        value = SetSomething;
    }
}