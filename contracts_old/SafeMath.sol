// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.0;

import "./SafeMathLib.sol";
contract SafeMath {
    using SafeMathLib for uint;
    function use_add(uint a,uint b) public pure returns(uint){
        return a.add(b);
    }
}