// SPDX-License-Identifier: MIT

// Version del compilador
pragma solidity ^0.8.0;

contract variables_modificadores{
        //Enteros con valores sin signo(uint)
        uint256 a;
        uint256 b=5;

        //Enteros con valores con signo(int)
        int256 c;
        int256 d=-27;
        int256 e=89;

        //Variables String;
        string str;
        string public str_public = "Esto es publico";
        string private str_private = "Este es privado";

        //Variables booleanas
        bool boolean;
        bool public boolean_true = true;
        bool public boolean_false = false;

        //Variables bytes
        bytes4 first_bytes;
        bytes32 second_bytes;
        bytes32 public hash = keccak256(abi.encodePacked("Hola"));

        //Variables address
        address my_address;
        address public address1 = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
        address public address2 = msg.sender;

        //Variable Enumerciones
        enum options {ON, OFF}
        options state;
        options constant defaultChoice = options.OFF;

        function turnOn() public{
            state = options.ON;
        }

        function turnOff() public{
            state = options.OFF;
        }

        function displaystatus() public view returns(options){
            return state;
        }






}
