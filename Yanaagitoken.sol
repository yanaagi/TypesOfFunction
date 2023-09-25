// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Import the OpenZeppelin ERC20 implementation
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    address public owner;

    constructor(uint256 initialSupply) ERC20("Yanaagi", "YAN") {
        _mint(msg.sender, initialSupply * (10 ** uint256(decimals())));
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    function mint(address to, uint256 value) external onlyOwner {
        _mint(to, value);
    }

    // Allow anyone to burn tokens
    function burn(address from, uint256 value) external {
        _burn(from, value);
    }
}
