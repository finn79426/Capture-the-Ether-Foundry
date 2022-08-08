# Capture the Ether - Foundry Version

Just my Capture the Ether solution codes

## Usage

- Clone this repo
    - `git clone https://github.com/finn79426/Capture-the-Ether-Foundry.git && cd Capture-the-Ether-Foundry`
- Install dependencies
    - `git submodule update --init --recursive`
- Set msg.sender is your EOA wallet address
    - Replace `sender` address in [foundry.toml](/foundry.toml)
- Set `challengeAddr` is your challenge contract address
    - Replace `challengeAddr` address in each `.exp.sol` files


...Or, run as my identity :

## Challenges

### Deploy a contract

Execute :
```
forge test --contracts test/Deploy-a-contract.exp.sol
```

Output : 
```
Running 1 test for test/Deploy-a-contract.exp.sol:ContractTest
[PASS] testExploit() (gas: 5440)
Test result: ok. 1 passed; 0 failed; finished in 3.97s
```