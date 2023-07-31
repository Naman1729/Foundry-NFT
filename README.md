# Foundry-DoggieNFT

This repository contains a DoggieNFT project implemented in the Foundry framework.

## To initiate a Foundry project from scratch

- To get basic template of foundry framework.

```bash
  forge init
```

## Quickstart

- Run These command:

```bash
git clone https://github.com/Naman1729/Foundry-NFT.git
```

```bash
cd Foundry-NFT
```

```bash
forge build
```

## To compile the contract.

```bash
  forge compile
```

## To deploy the contract.

- In Testnet.
  - only deploy

```bash
forge script script/DeployMoodNFT.s.sol --rpc-url $SEPOLIA_RPC_URL --private-key $PRIVATE_KEY --verify --etherscan-api-key $ETHERSCAN_API_KEY --broadcast
```

- In Testnet.
  - deploy and verify

```bash
    forge script script/DeployMoodNFT.s.sol --rpc-url $SEPOLIA_RPC_URL --private-key $PRIVATE_KEY --verify --etherscan-api-key $ETHERSCAN_API_KEY --broadcast
```

- In anvil.
  - To run the anvil.

```bash
  anvil
```

- In anvil.
  - deploy.

```bash
  forge script script/DeployMoodNFT.s.sol --rpc-url $RPC_URL_ANVIL --private-key $PRIVATE_KEY_ANVIL --broadcast
```

### To Installing library.

- Openzeppelin Library

```bash
forge install OpenZeppelin/openzeppelin-contracts --no-commit
```

- DevOps Library

```bash
forge install Cyfrin/foundry-devops --no-commit
```

### To test the contract.

1. In locally

```bash
forge test
```

2. In testnet

```bash
forge test --fork-url $SEPOLIA_RPC_URL
```

### To check coverage

```bash
forge coverage
```

### To Estimate gas

- By running this command, A file is generated which know as .gas-snapshot where we can estimate gas consumption. 
```bash
forge snapshot
```
### Base64
- To get base64 of an image. Run this: 
```bash
base64 -i img/happy.svg
```

## For any help

- forge

```bash
  forge --help
```

and

```bash
  forge script --help
```

- cast

```bash
  cast --help
```
