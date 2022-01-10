pragma solidity 0.5.1;

contract LowHigh {
//enum is a numerical state. In this case, low corresponds to 0 and High to 1.
//When Activate is pressed, the state changes from 0 (low) to 1 (high).
//Bool expresses true or false states.
    enum State { Low, High } 
    State public state;

    constructor() public {
        state = State.Low;
    }

        function Activate() public {
            state = State.High;
        }

            function isHigh() public view returns(bool) {
                return state == State.High;
            }
        }
