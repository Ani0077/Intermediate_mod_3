
# CustomERC20 Token Contract

This project implements a custom ERC20 token using Solidity. The token is based on OpenZeppelin's ERC20 standard, with a few modifications for ownership, minting, and burning.

## Features

- **Owner-Restricted Minting:** Only the contract owner can mint new tokens.
- **Token Burning:** Any user can burn their own tokens.
- **Custom Token Decimals:** The token has 3 decimal places instead of the standard 18.
- **Explicit Token Transfer:** The contract includes a function to send tokens from one address to another.

## Token Details

- **Token Name:** Aniket
- **Symbol:** AT
- **Initial Supply:** 100.000 AT (minted to the owner)
- **Decimals:** 3 (1000 units represent 1 AT)

## Functions

### `constructor()`
Sets the token name to "Aniket" and symbol to "AT". It mints 100 tokens (with 3 decimals) to the contract owner.

### `decimals()`
Overrides the default `decimals()` function to return 3, meaning that the token has 3 decimal places.

### `create(address recipient_owner, uint256 amount) external onlyOwner`
Allows the contract owner to mint new tokens. The `amount` will be minted to the `recipient_owner` address.

### `destroy(uint256 amount) external`
Allows any user to burn tokens from their own account. The `amount` specifies the number of tokens to burn.

### `sendTokens(address recipient, uint256 amount) external returns (bool)`
Transfers tokens from the caller to the `recipient` address. It returns a boolean indicating whether the transfer was successful.

## Usage

1. **Deploy the Contract:**
   Use a tool like Remix, Hardhat, or Truffle to deploy the contract to an Ethereum-based network.

2. **Mint Tokens (Owner Only):**
   The contract owner can mint new tokens using the `create` function:
   ```solidity
   create(address recipient_owner, uint256 amount);
   ```

3. **Burn Tokens:**
   Any token holder can burn their tokens using the `destroy` function:
   ```solidity
   destroy(uint256 amount);
   ```

4. **Transfer Tokens:**
   Users can transfer tokens to other accounts using the `sendTokens` function:
   ```solidity
   sendTokens(address recipient, uint256 amount);
   ```

## Prerequisites

- Solidity `^0.8.0`
- OpenZeppelin Contracts


## Deployment Example

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./CustomERC20.sol";

contract DeployCustomERC20 {
    CustomERC20 public token;

    constructor() {
        token = new CustomERC20();
    }
}
```
