// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "./utils.sol";

// Deploy challenge from https://capturetheether.com/challenges/
address constant challengeAddr = 0x8705887C2E32eb185d4d472251Cf484B5c04362f;   

contract ContractTest is Test {
    DeployChallenge challenge = DeployChallenge(challengeAddr);

    function setUp() public {
        vm.createSelectFork("ropsten");
        require(utils.isDeployed(challengeAddr), "Invalid challengeAddr");
    }

    function testExploit() public {
        challenge.isComplete();
    }
}


/* -------------------- Interface -------------------- */
interface DeployChallenge {
    function isComplete() external pure returns (bool);
}
