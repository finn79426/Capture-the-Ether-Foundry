// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "./Utils.sol";

// Deploy your challenge contract from https://capturetheether.com/challenges/
address constant challengeAddr = 0x8705887C2E32eb185d4d472251Cf484B5c04362f;   
address constant player = 0x5f36131717Cd657e04cA6aEd38D230F72547415C;   // your EOA wallet address

contract ContractTest is Test {
    DeployChallenge challenge = DeployChallenge(challengeAddr);
    Utils utils = new Utils();

    function setUp() public {
        vm.createSelectFork("ropsten");
        require(utils.isDeployed(challengeAddr), "Invalid challengeAddr");
    }

    function testExploit() public {
        vm.startPrank(player);
        
        /* Write your exploit code  */
        bool suc = challenge.isComplete();
        require(suc, "Exploit Failed");
        /* ------------------------ */

        vm.stopPrank();
    }
}


/* -------------------- Interface -------------------- */
interface DeployChallenge {
    function isComplete() external pure returns (bool);
}
