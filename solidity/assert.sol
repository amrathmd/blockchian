// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Assert{
    function division(uint numerator,uint denominator)public pure returns (uint){
        require(denominator !=0,"denominator is zero");
        return numerator/denominator;
    }
}