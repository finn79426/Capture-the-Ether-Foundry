// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "./Utils.sol";

// Deploy your challenge contract from https://capturetheether.com/challenges/
address constant challengeAddr = 0x8705887C2E32eb185d4d472251Cf484B5c04362f;   

contract ContractTest is Test {
    DeployChallenge challenge = DeployChallenge(challengeAddr);
    Utils utils = new Utils();

    function setUp() public {
        vm.createSelectFork("ropsten");
        require(utils.isDeployed(challengeAddr), "Challenge not deployed");
    }

    function testExploit() public {        
        /* Write your exploit code  */
        bool suc = challenge.isComplete();
        require(suc, "Exploit Failed");
        /* ------------------------ */
    }
}


/* -------------------- Interface -------------------- */
interface DeployChallenge {
    function isComplete() external pure returns (bool);
}
