CustomERC20 Token Contract
This project contains a simple ERC20 token contract built using OpenZeppelin's ERC20 implementation. The contract is named CustomERC20, with a token named Aniket Token (AT), and has an initial supply minted to the contract owner.

Table of Contents
Overview
Features
Prerequisites
Deployment
Functions
License
Overview
The CustomERC20 contract is an implementation of the ERC20 token standard. This contract allows the owner to mint new tokens, users to burn their tokens, and anyone to transfer tokens. The token has 3 decimal places, and the contract owner is assigned the initial token supply.

Token details:

Name: Aniket Token
Symbol: AT
Decimals: 3
Features
Minting: The contract owner can mint new tokens to any address.
Burning: Any user can burn their tokens.
Transfer: Tokens can be transferred between accounts using standard ERC20 functionality.
Initial Supply: Upon deployment, 100 AT tokens (with 3 decimals) are minted and assigned to the contract owner.
Prerequisites
To work with the CustomERC20 contract, you will need:

Solidity compiler: Version ^0.8.0 or later.
OpenZeppelin Contracts: The ERC20 token contract from the OpenZeppelin library is used in this project.
Node.js and npm for using tools like Hardhat or Truffle to deploy and test the contract.
MetaMask or other Ethereum wallets to interact with the contract on a testnet or mainnet.
Deployment
Follow these steps to deploy the contract using Hardhat:

Clone the repository and navigate to the project directory.

Install dependencies:

bash
Copy code
npm install
Compile the contract:

bash
Copy code
npx hardhat compile
Deploy the contract to a local or test network (e.g., Rinkeby):

bash
Copy code
npx hardhat run scripts/deploy.js --network rinkeby
After deployment, the contract will mint 100 tokens to the contract owner's address.

Functions
constructor()
Purpose: Initializes the token with the name "Aniket" and symbol "AT". It also mints 100 tokens (with 3 decimals) to the contract owner.
decimals()
Visibility: public, pure
Purpose: Returns the number of decimals for the token. The token has 3 decimals.
create(address recipient_owner, uint256 amount)
Visibility: external
Modifiers: onlyOwner
Purpose: Allows the contract owner to mint new tokens to a specified address.
Parameters:
recipient_owner: The address that will receive the minted tokens.
amount: The amount of tokens to be minted.
destroy(uint256 amount)
Visibility: external
Purpose: Allows any user to burn a specified amount of tokens from their own balance.
Parameters:
amount: The amount of tokens to be burned.
sendTokens(address recipient, uint256 amount)
Visibility: external
Purpose: A wrapper for the ERC20 transfer function. Sends tokens from the caller to the specified recipient.
Parameters:
recipient: The address that will receive the tokens.
amount: The number of tokens to be sent.
