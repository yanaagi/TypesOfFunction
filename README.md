# MyToken Smart Contract
This is a simple Ethereum smart contract named `MyToken` written in Solidity. It represents a basic token with functionalities for transferring, burning, and minting tokens. 

## Overview

- **Name**: Yanaagi Token
- **Symbol**: YAN
- **Decimals**: 18
- **Total Supply**: Initially set upon deployment
- **Owner**: Account that deployed the contract

## Functions

### `constructor(uint256 initialSupply)`

This function initializes the token with an initial supply, assigns all tokens to the contract owner, and sets the owner's address.

### `burn(address from, uint256 value)`

This function allows the owner to burn tokens from a specific address. It checks for a valid address and sufficient balance before burning the tokens.

### `transferFrom(address from, address to, uint256 value)`

This function allows any account to transfer tokens from one address to another. It checks for valid addresses and sufficient balance.

### `burntotal(uint256 value)`

This function allows any account to burn their own tokens. It checks for a sufficient balance.

### `mint(address to, uint256 value)`

This function allows the owner to mint additional tokens and assign them to a specified address.

## Events

- `Transfer(address indexed from, address indexed to, uint256 value)` - Triggered when tokens are transferred.
- `BurnTotal(address indexed from, uint256 value)` - Triggered when the owner burns tokens from a specific address.
- `Burn(address indexed from, uint256 value)` - Triggered when tokens are burned by any account.
- `Mint(address indexed to, uint256 value)` - Triggered when new tokens are minted by the owner.
