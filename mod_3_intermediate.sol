// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract CustomERC20 is ERC20 {
    
    address public contractOwner;

    // Modifier to restrict certain functions to the contract owner
    modifier onlyOwner() {
        require(msg.sender == contractOwner, "You are not the owner");
        _;
    }

    // Constructor to set the token name, symbol, and initial supply
    constructor() ERC20("Aniket", "AT") {
        contractOwner = msg.sender;
        _mint(contractOwner, 100 * 10**decimals());
    }

    function decimals() public pure override returns (uint8) {
        return 3;
    }

    // Function to allow the owner to mint new tokens to a specific address
    function create(address recipient_owner, uint256 amount) external onlyOwner {
        _mint(recipient_owner, amount);
    }

    // Function to allow any user to burn their own tokens
    function destroy(uint256 amount) external {
        _burn(msg.sender, amount);
    }

    // Explicit transfer function to transfer tokens to a specific address
    function sendTokens(address recipient, uint256 amount) external returns (bool) {
        return transfer(recipient, amount);
    }
}
