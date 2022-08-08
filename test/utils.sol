// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract utils {
    function isDeployed(address _addr) public returns (bool){
        uint32 size;
        assembly { size := extcodesize(_addr) }
        return (size > 0);
    }
}
